// Azure Functions types and the app object used to register this HTTP endpoint.
import { app, HttpRequest, HttpResponseInit, InvocationContext } from "@azure/functions";
// DefaultAzureCredential lets local development use your Azure login and the
// deployed Function App use its managed identity. No SQL password is required.
import { DefaultAzureCredential } from "@azure/identity";
// The mssql package opens the connection and executes parameterized SQL queries.
import sql from "mssql";

// Credential is created once when the function worker starts and reused by requests.
const credential = new DefaultAzureCredential();
// These values are the only provider slugs allowed by the database schema.
const validProviders = new Set(["unitedhealthcare", "humana"]);

// Describes the columns returned by the Product SELECT statement.
// TypeScript uses this interface to catch mismatches while developing.
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
    // These are application settings in Azure and values in local.settings.json locally.
    const server = process.env.SQL_SERVER;
    const database = process.env.SQL_DATABASE;

    // Fail clearly if the Function App was not configured correctly.
    if (!server || !database) {
        throw new Error("SQL_SERVER and SQL_DATABASE must be configured");
    }

    // token-credential tells the SQL driver to authenticate through Entra ID.
    // The Function App identity must also have a user and read permission in SQL.
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
    // Query parameters are strings. Trim whitespace and normalize case so that
    // values such as " Humana " are handled consistently.
    const insurance = request.query.get("insurance")?.trim().toLowerCase();

    // Validate before contacting the database. This provides a useful 400 response
    // and prevents unsupported provider values from reaching the query.
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
        // Open a SQL connection using the managed identity credential.
        const pool = await sql.connect(getSqlConfig());
        // .input binds the value safely as a SQL parameter; it must not be concatenated
        // into the SQL text because concatenation can create SQL injection vulnerabilities.
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

        // Close the connection after the query so resources are released.
        await pool.close();

        // jsonBody tells Azure Functions to serialize this JavaScript object as JSON.
        return {
            status: 200,
            jsonBody: {
                insuranceProvider: insurance,
                count: result.recordset.length,
                products: result.recordset
            }
        };
    } catch (error) {
        // Log diagnostic details to Application Insights, while returning a generic
        // message to the caller so database information is not exposed publicly.
        context.error("Product lookup failed", error);
        return {
            status: 500,
            jsonBody: { error: "Unable to load products" }
        };
    }
}

// Register the exported handler with Azure Functions.
// The deployed URL is /api/products and callers must provide a Function key.
app.http("getProducts", {
    methods: ["GET"],
    authLevel: "function",
    route: "products",
    handler: getProducts
});
