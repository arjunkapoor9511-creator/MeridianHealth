import { app, HttpRequest, HttpResponseInit, InvocationContext } from "@azure/functions";
import { DefaultAzureCredential } from "@azure/identity";
import sql from "mssql";

const credential = new DefaultAzureCredential();
const validProviders = new Set(["unitedhealthcare", "humana"]);

interface ProductRow {
    ProductId: number;
    Slug: string;
    Name: string;
    Sku: string;
    Category: string;
    InsuranceProviderSlug: string;
    BrandName: string | null;
    Price: number;
    CompareAtPrice: number | null;
    GridImageUrl: string;
    GridImageAlt: string | null;
    LengthMm: number | null;
    WidthMm: number | null;
    HeightMm: number | null;
    WeightKg: number | null;
    SafeWorkingLoadKg: number | null;
    PropellingMethod: string | null;
}

function getSqlConfig(): sql.config {
    const server = process.env.SQL_SERVER;
    const database = process.env.SQL_DATABASE;

    if (!server || !database) {
        throw new Error("SQL_SERVER and SQL_DATABASE must be configured");
    }

    return {
        server,
        database,
        authentication: {
            type: "token-credential",
            options: { credential }
        },
        options: {
            encrypt: true,
            trustServerCertificate: false
        }
    };
}

export async function getProducts(request: HttpRequest, context: InvocationContext): Promise<HttpResponseInit> {
    const insurance = request.query.get("insurance")?.trim().toLowerCase();

    if (!insurance || !validProviders.has(insurance)) {
        return {
            status: 400,
            jsonBody: {
                error: "Invalid insurance provider",
                allowedValues: Array.from(validProviders)
            }
        };
    }

    try {
        const pool = await sql.connect(getSqlConfig());
        const result = await pool.request()
            .input("insurance", sql.NVarChar(50), insurance)
            .query<ProductRow>(`
                SELECT
                    ProductId, Slug, Name, Sku, Category,
                    InsuranceProviderSlug, BrandName, Price, CompareAtPrice,
                    GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm,
                    WeightKg, SafeWorkingLoadKg, PropellingMethod
                FROM dbo.Product
                WHERE InsuranceProviderSlug = @insurance
                ORDER BY Name;
            `);

        await pool.close();

        return {
            status: 200,
            jsonBody: {
                insuranceProvider: insurance,
                count: result.recordset.length,
                products: result.recordset
            }
        };
    } catch (error) {
        context.error("Product lookup failed", error);
        return {
            status: 500,
            jsonBody: { error: "Unable to load products" }
        };
    }
}

app.http("getProducts", {
    methods: ["GET"],
    authLevel: "function",
    route: "products",
    handler: getProducts
});
