import { app, HttpRequest, HttpResponseInit, InvocationContext } from "@azure/functions";
import { DefaultAzureCredential } from "@azure/identity";
import sql from "mssql";

const credential = new DefaultAzureCredential();

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

function parseJson(value: string | null): unknown {
    return value === null ? null : JSON.parse(value);
}

export async function getProductDetail(
    request: HttpRequest,
    context: InvocationContext
): Promise<HttpResponseInit> {
    const sku = request.query.get("sku")?.trim();

    if (!sku) {
        return {
            status: 400,
            jsonBody: { error: "The sku query parameter is required" }
        };
    }

    let pool: sql.ConnectionPool | undefined;
    try {
        pool = await sql.connect(getSqlConfig());
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

        const row = result.recordset[0];
        if (!row) {
            return {
                status: 404,
                jsonBody: { error: "Product not found", sku }
            };
        }

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
        context.error("Product detail lookup failed", error);
        return {
            status: 500,
            jsonBody: { error: "Unable to load product detail" }
        };
    } finally {
        await pool?.close();
    }
}

app.http("getProductDetail", {
    methods: ["GET"],
    authLevel: "function",
    route: "productdetail",
    handler: getProductDetail
});
