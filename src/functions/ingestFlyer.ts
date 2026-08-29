// Event Grid blob trigger: runs the flyer ingestion pipeline end to end.
//
//   new PDF in %FLYERS_CONTAINER_NAME%
//     -> flyer-to-factset agent (Foundry)      -> fact set JSON
//     -> text-embedding-3-large (Azure OpenAI)  -> one vector per fact
//     -> product-facts search index            -> one document per fact
//
// The raw fact set is also archived to %FACTS_CONTAINER_NAME% so the index can be
// rebuilt later without paying for another agent call.
//
// Every outbound call authenticates with the Function App managed identity via
// DefaultAzureCredential - no keys in configuration.
import { app, InvocationContext, output } from "@azure/functions";
import { DefaultAzureCredential, getBearerTokenProvider } from "@azure/identity";
import { SearchClient } from "@azure/search-documents";
import { AzureOpenAI } from "openai";
import { createHash } from "node:crypto";

// One credential per worker; every client below shares it.
const credential = new DefaultAzureCredential();

// Foundry Agent Service data plane. If this 401s, swap the audience for
// "https://cognitiveservices.azure.com/.default".
const foundryToken = getBearerTokenProvider(credential, "https://ai.azure.com/.default");

// Override with the AGENT_API_VERSION app setting; set it to "none" to omit the
// query string entirely.
const AGENT_API_VERSION = process.env.AGENT_API_VERSION ?? "2025-11-15-preview";
const EMBED_API_VERSION = "2024-10-21";

function agentUrl(): string {
    const base = requireEnv("AGENT_ENDPOINT");
    if (!AGENT_API_VERSION || AGENT_API_VERSION === "none") {
        return base;
    }
    return `${base}${base.includes("?") ? "&" : "?"}api-version=${AGENT_API_VERSION}`;
}

// Archive of the agent's raw output, named after the source PDF.
const factsArchive = output.storageBlob({
    path: "%FACTS_CONTAINER_NAME%/{name}.json",
    connection: "FLYERS_STORAGE",
});

// Shape the agent returns (see prompts/product-fact-extraction.md).
interface Fact {
    statement: string;
    category: string;
    component: string | null;
    optional: boolean;
    part_number: string | null;
    applies_to_sku: string | null;
}
interface FactSet {
    product_name: string;
    primary_sku: string;
    brand: string;
    category: string;
    source_file: string;
    facts: Fact[];
}

function requireEnv(name: string): string {
    const value = process.env[name];
    if (!value) {
        throw new Error(`Missing required app setting: ${name}`);
    }
    return value;
}

// Built on first use, not at module load - a missing setting then surfaces as a
// logged function error instead of crashing the worker for every function.
let clients: { search: SearchClient<Record<string, unknown>>; openai: AzureOpenAI } | undefined;

function getClients() {
    if (!clients) {
        clients = {
            search: new SearchClient<Record<string, unknown>>(
                requireEnv("SEARCH_ENDPOINT"),
                requireEnv("SEARCH_INDEX"),
                credential,
            ),
            openai: new AzureOpenAI({
                endpoint: requireEnv("AOAI_ENDPOINT"),
                azureADTokenProvider: getBearerTokenProvider(credential, "https://cognitiveservices.azure.com/.default"),
                apiVersion: EMBED_API_VERSION,
            }),
        };
    }
    return clients;
}

// Call the flyer-to-factset agent with the PDF; return the JSON text it emits.
async function extractFactSet(pdf: Buffer, filename: string, context: InvocationContext): Promise<string> {
    const res = await fetch(agentUrl(), {
        method: "POST",
        headers: {
            Authorization: `Bearer ${await foundryToken()}`,
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            input: [
                {
                    role: "user",
                    content: [
                        {
                            type: "input_file",
                            filename,
                            file_data: `data:application/pdf;base64,${pdf.toString("base64")}`,
                        },
                        {
                            type: "input_text",
                            text: `FILENAME: ${filename}\nExtract the fact set. Return only the JSON object.`,
                        },
                    ],
                },
            ],
            max_output_tokens: 16000,
        }),
    });

    if (!res.ok) {
        throw new Error(`Agent call failed ${res.status}: ${await res.text()}`);
    }

    const body = (await res.json()) as {
        status?: string;
        incomplete_details?: { reason?: string };
        output?: { type: string; content?: { text?: string }[] }[];
        output_text?: string;
    };

    if (body.status === "incomplete") {
        throw new Error(`Agent response incomplete: ${body.incomplete_details?.reason ?? "unknown"} - raise max_output_tokens`);
    }

    // The Responses API returns the answer as text parts inside an assistant message.
    const text = (body.output ?? [])
        .filter((item) => item.type === "message")
        .flatMap((item) => item.content ?? [])
        .map((part) => part.text ?? "")
        .join("")
        .trim();

    const result = text || body.output_text || "";
    context.log(`Agent response: ${result.length} chars`);
    return result;
}

// Pull the outermost JSON object out of any surrounding prose or ```json fence,
// tolerate trailing commas, and log the raw text if it still won't parse.
function parseFactSet(raw: string, context: InvocationContext): FactSet {
    const start = raw.indexOf("{");
    const end = raw.lastIndexOf("}");
    if (start === -1 || end <= start) {
        context.error(`Agent returned no JSON object. Raw:\n${raw.slice(0, 4000)}`);
        throw new Error("Agent response contained no JSON object");
    }

    const json = raw.slice(start, end + 1).replace(/,(\s*[}\]])/g, "$1");
    try {
        return JSON.parse(json) as FactSet;
    } catch (err) {
        context.error(`Fact set JSON parse failed: ${(err as Error).message}\nRaw:\n${raw.slice(0, 8000)}`);
        throw err;
    }
}

// Remove documents already indexed for this flyer so a reprocess that yields
// fewer facts doesn't leave stale ones behind.
async function deleteExisting(sourceFile: string, context: InvocationContext): Promise<void> {
    const { search } = getClients();
    const escaped = sourceFile.replace(/'/g, "''");
    const found = await search.search("*", {
        filter: `source_file eq '${escaped}'`,
        select: ["id"],
        top: 1000,
    });

    const ids: { id: string }[] = [];
    for await (const result of found.results) {
        ids.push({ id: (result.document as { id: string }).id });
    }

    if (ids.length) {
        await search.deleteDocuments(ids);
        context.log(`Removed ${ids.length} existing documents for ${sourceFile}`);
    }
}

export async function ingestFlyer(blob: unknown, context: InvocationContext): Promise<void> {
    const filename = context.triggerMetadata?.name as string | undefined;

    if (!filename?.toLowerCase().endsWith(".pdf")) {
        context.log(`Skipping non-PDF blob: ${filename}`);
        return;
    }

    const pdf = Buffer.isBuffer(blob) ? blob : Buffer.from(blob as Uint8Array);
    if (pdf.length === 0) {
        context.log(`Skipping empty blob: ${filename}`);
        return;
    }

    context.log(`Ingesting ${filename} (${pdf.length} bytes)`);

    const { search, openai } = getClients();

    // 1. PDF -> fact set
    const factSet = parseFactSet(await extractFactSet(pdf, filename, context), context);
    factSet.source_file = filename; // trust the trigger, not the model
    const facts = factSet.facts ?? [];
    context.log(`Agent returned ${facts.length} facts for ${factSet.primary_sku}`);

    // 2. Archive the raw fact set for audit / re-indexing
    context.extraOutputs.set(factsArchive, JSON.stringify(factSet, null, 2));

    // 3. Drop previous documents for this flyer
    await deleteExisting(filename, context);

    if (facts.length === 0) {
        context.warn(`No facts extracted from ${filename}; nothing indexed`);
        return;
    }

    // 4. Embed every statement in a single request; data[i] maps to facts[i]
    const embeddings = await openai.embeddings.create({
        model: process.env.EMBED_DEPLOYMENT!,
        input: facts.map((fact) => fact.statement),
    });

    // 5. Build one document per fact and upsert
    const documents = facts.map((fact, i) => ({
        id: createHash("sha256").update(`${filename}::${fact.statement}`).digest("hex"),
        statement: fact.statement,
        statement_vector: embeddings.data[i].embedding,
        product_name: factSet.product_name,
        primary_sku: factSet.primary_sku,
        brand: factSet.brand,
        category: fact.category,
        component: fact.component ?? null,
        optional: fact.optional ?? false,
        part_number: fact.part_number ?? null,
        applies_to_sku: fact.applies_to_sku ?? null,
        source_file: filename,
    }));

    const result = await search.mergeOrUploadDocuments(documents);
    const failed = result.results.filter((r) => !r.succeeded);
    context.log(`Indexed ${documents.length - failed.length}/${documents.length} facts for ${filename}`);

    if (failed.length) {
        // Throw so Event Grid retries and, after retries, dead-letters the event.
        throw new Error(`${failed.length} documents failed to index: ${failed.map((r) => r.key).join(", ")}`);
    }
}

// Event Grid-based blob trigger (low latency, reliable on Flex Consumption).
// Requires an Event Grid subscription from the storage account to this function.
app.storageBlob("ingestFlyer", {
    path: "%FLYERS_CONTAINER_NAME%/{name}",
    connection: "FLYERS_STORAGE",
    source: "EventGrid",
    extraOutputs: [factsArchive],
    handler: ingestFlyer,
});
