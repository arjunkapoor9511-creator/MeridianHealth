# MeridianHealth
MeridianHealth is a fictional company used for a Vercel demo.

## Background
MeridianHealth is a reseller of mobility equipment. Customers buy through the MeridianHealth website, but the charges are forwarded to their insurance provider — only customers covered by an insurance company MeridianHealth holds a contract with are eligible to buy.

A newly signed insurance contract has brought a surge of users to the site. The load itself is not a problem — the site copes — but server-side rendering makes Largest Contentful Paint slow. The bigger issue is product discovery: most of a customer's buying criteria lives in per-product PDF flyers that describe each mobility device's features in detail. A customer finds a product, opens its flyer, decides whether it fits, and repeats that across roughly ten products before reaching a decision — a slow and frustrating loop. Many give up and call the MeridianHealth office for a recommendation instead, and that call volume has grown faster than the team can handle.

MeridianHealth now wants to modernize the product-discovery experience on the website. The Azure setup below supports that: it turns the PDF flyers into a structured, searchable product-knowledge base for conversational discovery.

## Azure Setup
The real client runs a headless PIM + CMS platform; here it is mocked with Azure services the Vercel app calls to load data. All resources sit in resource group `vercel-demo`, and all service-to-service calls use the `meridian-products-api` Function App's managed identity — no keys or connection strings in configuration.

### Product catalogue (backend + product API)
- **Azure SQL Database `meridian-db`** (`meridianmobility.database.windows.net`) — `Product` / `ProductDetail` tables; schema and seed data in [`infra/`](infra/); Entra ID token auth (managed identity in Azure, developer login locally).
- **Functions app `meridian-products-api`** — TypeScript v4 programming model, Flex Consumption, Node 20, Central US. Hosts both the product API and the ingestion pipeline.
- **`getProducts`** — `GET /api/products`; list endpoint stubbing the PIM catalogue feed.
- **`getProductDetail`** — `GET /api/productdetail?sku=…`; single-record endpoint stubbing the CMS content entry; `authLevel: function`.

### RAG ingestion pipeline (Storage → ingestFlyer → AI → Search)
- **Storage account `vercelfiles`** (premium BlockBlobStorage) — `flyers-raw` container holds source PDFs named `{SKU}-FLYER.pdf`; `flyers-facts` holds the archived fact-set JSON. Identity-based connection `FLYERS_STORAGE`; `__queueServiceUri` points at the Functions host storage account because premium block blob has no queue endpoint.
- **Event Grid subscription `flyers-raw-to-ingest`** — on `vercelfiles`, event type `Microsoft.Storage.BlobCreated`, subject filtered to `…/containers/flyers-raw/blobs/` ending `.pdf`, delivered to the Functions blob-extension webhook.
- **`ingestFlyer` function** — Event Grid blob trigger (`source: EventGrid`). Per PDF: call the agent → batch-embed every fact → upsert to Search → archive the JSON. Document `id` = `sha256(source_file + "::" + statement)`; existing docs for a flyer are deleted before re-upsert so reprocessing self-corrects.
- **Foundry agent `flyer-to-factset`** (project `rag-agents` on `vercel-ai`) — backed by a **GPT-5** deployment; invoked over the OpenAI Responses protocol; `api-version` set via `AGENT_API_VERSION` (default `2025-11-15-preview`); bearer-token auth; identity role **Azure AI Account Owner**; `max_output_tokens` 16000. Extraction prompt: [`prompts/product-fact-extraction.md`](prompts/product-fact-extraction.md).
- **Embeddings `text-embedding-3-large`** on `vercel-ai` (`https://vercel-ai.openai.azure.com`, `api-version` `2024-10-21`) — 3072-dim vectors; used at ingest time by `ingestFlyer` and at query time by the Search vectorizer. Identity role **Cognitive Services OpenAI User**.
- **Azure AI Search `productflyersearch`, index `product-facts`** — push model, no indexer/datasource/skillset. One document per fact: key `id`; `statement` (searchable) and `statement_vector` (`Collection(Edm.Single)`, 3072 dims, HNSW/cosine, profile `vp`); filterable metadata `product_name`, `primary_sku`, `brand`, `category`, `component`, `optional`, `part_number`, `applies_to_sku`, `source_file`; `azureOpenAI` vectorizer `aoai-vectorizer` for query-time embedding; semantic config `default` (title `product_name`, content `statement`, keywords `category`). Definition in [`infra/product-facts.index.json`](infra/product-facts.index.json). Identity role **Search Index Data Contributor**.