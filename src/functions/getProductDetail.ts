// Azure Functions types and the app object used to register this HTTP endpoint.
import { app, HttpRequest, HttpResponseInit, InvocationContext } from "@azure/functions";
// Uses your local Azure login during development and the Function App's managed
// identity after deployment.
import { DefaultAzureCredential } from "@azure/identity";
// SQL Server/Azure SQL client for Node.js.
import sql from "mssql";

// Created once per function worker rather than once per request.
const credential = new DefaultAzureCredential();

// Describes the combined row returned by the Product/ProductDetail join.
// JSON columns remain strings here and are parsed before the response is returned.
interface ProductDetailRow {
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
    ShortDescription: string | null;
    Description: string | null;
    Warranty: string | null;
    Specs: string;
    Features: string | null;
    Images: string | null;
    Files: string | null;
    SourceUrl: string | null;
}

function getSqlConfig(): sql.config {
    // Read non-secret connection details from environment variables.
    const server = process.env.SQL_SERVER;
    const database = process.env.SQL_DATABASE;

    // Configuration errors should be detected before trying to connect.
    if (!server || !database) {
        throw new Error("SQL_SERVER and SQL_DATABASE must be configured");
    }

    // Entra token authentication avoids storing a SQL username or password.
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

// ProductDetail stores Specs, Features, Images, and Files as JSON text in NVARCHAR
// columns. This converts that text into arrays/objects in the API response.
function parseJson(value: string | null): unknown {
    return value === null ? null : JSON.parse(value);
}

export async function getProductDetail(
    request: HttpRequest,
    context: InvocationContext
): Promise<HttpResponseInit> {
    // The SKU identifies exactly one product. It is supplied as ?sku=...
    const sku = request.query.get("sku")?.trim();

    // Reject an incomplete request before opening a database connection.
    if (!sku) {
        return {
            status: 400,
            jsonBody: { error: "The sku query parameter is required" }
        };
    }

    let pool: sql.ConnectionPool | undefined;
    try {
        // Connect to Azure SQL using the Function App managed identity.
        pool = await sql.connect(getSqlConfig());
        // Use a bound parameter rather than inserting sku into the SQL string.
        const result = await pool.request()
            .input("sku", sql.NVarChar(20), sku)
            .query<ProductDetailRow>(`
                SELECT
                    p.ProductId, p.Slug, p.Name, p.Sku, p.Category,
                    p.InsuranceProviderSlug, p.BrandName, p.Price, p.CompareAtPrice,
                    p.GridImageUrl, p.GridImageAlt, p.LengthMm, p.WidthMm, p.HeightMm,
                    p.WeightKg, p.SafeWorkingLoadKg, p.PropellingMethod,
                    d.ShortDescription, d.Description, d.Warranty, d.Specs,
                    d.Features, d.Images, d.Files, d.SourceUrl
                FROM dbo.Product AS p
                INNER JOIN dbo.ProductDetail AS d ON d.ProductId = p.ProductId
                WHERE p.Sku = @sku;
            `);

        // An INNER JOIN returns no row if either Product or ProductDetail is missing.
        const row = result.recordset[0];
        if (!row) {
            return {
                status: 404,
                jsonBody: { error: "Product not found", sku }
            };
        }

        // Build a deliberate public API shape instead of returning raw database columns.
        // This lets the database schema change without forcing client changes.
        return {
            status: 200,
            jsonBody: {
                product: {
                    productId: row.ProductId,
                    slug: row.Slug,
                    name: row.Name,
                    sku: row.Sku,
                    category: row.Category,
                    insuranceProvider: row.InsuranceProviderSlug,
                    brandName: row.BrandName,
                    price: row.Price,
                    compareAtPrice: row.CompareAtPrice,
                    gridImageUrl: row.GridImageUrl,
                    gridImageAlt: row.GridImageAlt,
                    dimensions: {
                        lengthMm: row.LengthMm,
                        widthMm: row.WidthMm,
                        heightMm: row.HeightMm
                    },
                    weightKg: row.WeightKg,
                    safeWorkingLoadKg: row.SafeWorkingLoadKg,
                    propellingMethod: row.PropellingMethod
                },
                detail: {
                    shortDescription: row.ShortDescription,
                    description: row.Description,
                    warranty: row.Warranty,
                    specs: parseJson(row.Specs),
                    features: parseJson(row.Features),
                    images: parseJson(row.Images),
                    files: parseJson(row.Files),
                    sourceUrl: row.SourceUrl
                }
            }
        };
    } catch (error) {
        // Record the real error in Application Insights but avoid exposing SQL details.
        context.error("Product detail lookup failed", error);
        return {
            status: 500,
            jsonBody: { error: "Unable to load product detail" }
        };
    } finally {
        // finally runs for success and failure, preventing leaked SQL connections.
        await pool?.close();
    }
}

// Register the handler at GET /api/productdetail.
// The Function authorization level means the caller must include a Function key.
app.http("getProductDetail", {
    methods: ["GET"],
    authLevel: "function",
    route: "productdetail",
    handler: getProductDetail
});
