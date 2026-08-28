-- ============================================================
-- Mobility & Falls Prevention Catalog — PoC create script
-- Target: Azure SQL Database (T-SQL)
-- Postgres port: IDENTITY -> GENERATED ALWAYS AS IDENTITY / SERIAL,
--                NVARCHAR -> TEXT/VARCHAR, DATETIME2 -> TIMESTAMPTZ,
--                ISJSON(x)=1 -> x::jsonb IS NOT NULL, SYSUTCDATETIME() -> now()
-- ============================================================

-- Idempotent re-run safety: drop children before parents
IF OBJECT_ID('dbo.ProductDetail', 'U') IS NOT NULL DROP TABLE dbo.ProductDetail;
IF OBJECT_ID('dbo.Product', 'U') IS NOT NULL DROP TABLE dbo.Product;

-- ============================================================
-- Product
-- Everything the grid card + grid filters need. One row = one
-- product = one price (variants were collapsed to a single
-- default SKU per product for this PoC).
-- ============================================================
CREATE TABLE dbo.Product (
  ProductId             INT IDENTITY(1,1) PRIMARY KEY,

  Slug                  NVARCHAR(200) NOT NULL,          -- e.g. 'aspire-vida-mg-wheelchair'
  Name                  NVARCHAR(300) NOT NULL,
  Sku                   NVARCHAR(20)  NOT NULL,          -- e.g. 'MWS449872' -- also the blob-file prefix

  Category              NVARCHAR(30)  NOT NULL,
  InsuranceProviderSlug NVARCHAR(50)  NOT NULL,          -- gates which catalog a user sees
  BrandName             NVARCHAR(150) NULL,

  Price                 DECIMAL(10,2) NOT NULL,
  CompareAtPrice        DECIMAL(10,2) NULL,              -- struck-through 'was' price; NULL if not on sale

  GridImageUrl          NVARCHAR(500) NOT NULL,          -- = ProductDetail.Images[0].url
  GridImageAlt          NVARCHAR(300) NULL,

  LengthMm              INT NULL,                        -- filterable dimensions;
  WidthMm               INT NULL,                        -- NULL across the board for categories
  HeightMm              INT NULL,                        -- (e.g. falls-prevention-solutions) that
  WeightKg              DECIMAL(6,2) NULL,                -- don't publish dimensions
  SafeWorkingLoadKg     DECIMAL(6,2) NULL,

  PropellingMethod      NVARCHAR(20) NULL,               -- 'Self' | 'Attendant' | NULL
                                                           -- denormalized copy of ProductDetail.Specs.propellingMethod,
                                                           -- kept here only so the grid can filter on it directly

  CreatedAt             DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
  UpdatedAt             DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),

  CONSTRAINT UQ_Product_Slug UNIQUE (Slug),
  CONSTRAINT UQ_Product_Sku  UNIQUE (Sku),

  CONSTRAINT CK_Product_Category CHECK (Category IN (
      'mobility-scooters',
      'manual-wheelchairs',
      'power-wheelchairs',
      'falls-prevention-solutions'
  )),

  CONSTRAINT CK_Product_InsuranceProvider CHECK (InsuranceProviderSlug IN (
      'unitedhealthcare',
      'humana'
  )),

  CONSTRAINT CK_Product_PropellingMethod CHECK (
      PropellingMethod IS NULL OR PropellingMethod IN ('Self','Attendant')
  )
);

CREATE INDEX IX_Product_Category   ON dbo.Product(Category);
CREATE INDEX IX_Product_Insurance  ON dbo.Product(InsuranceProviderSlug);
CREATE INDEX IX_Product_Price      ON dbo.Product(Price);
CREATE INDEX IX_Product_Propelling ON dbo.Product(PropellingMethod) WHERE PropellingMethod IS NOT NULL;

-- ============================================================
-- ProductDetail
-- Everything the product page needs and the grid never touches.
-- Strict 1:1 with Product — split for query narrowness, not
-- normalization purity.
-- ============================================================
CREATE TABLE dbo.ProductDetail (
  ProductId           INT NOT NULL PRIMARY KEY,

  ShortDescription    NVARCHAR(500) NULL,               -- tagline
  Description         NVARCHAR(MAX) NULL,               -- long-form overview paragraph
  Warranty             NVARCHAR(500) NULL,               -- e.g. 'Frame: 5 Years - Components: 1 Year'

  Specs                NVARCHAR(MAX) NOT NULL,           -- category-shaped JSON object, e.g.
                                                           -- {"maxSpeedKmh":6.4,"rangeKm":24,...}
  Features             NVARCHAR(MAX) NULL,               -- JSON array of bullet strings
  Images                NVARCHAR(MAX) NULL,               -- JSON array of {url, alt, sortOrder, width, height} -
                                                           -- entry at sortOrder 0 is the same image as GridImageUrl
  Files                 NVARCHAR(MAX) NULL,               -- JSON array of {label, url, sizeBytes}

  SourceUrl             NVARCHAR(500) NULL,               -- original Aidacare listing this row was captured from

  CONSTRAINT FK_ProductDetail_Product FOREIGN KEY (ProductId)
      REFERENCES dbo.Product(ProductId) ON DELETE CASCADE,

  CONSTRAINT CK_ProductDetail_Specs_IsJson    CHECK (ISJSON(Specs) = 1),
  CONSTRAINT CK_ProductDetail_Features_IsJson CHECK (Features IS NULL OR ISJSON(Features) = 1),
  CONSTRAINT CK_ProductDetail_Images_IsJson   CHECK (Images   IS NULL OR ISJSON(Images)   = 1),
  CONSTRAINT CK_ProductDetail_Files_IsJson    CHECK (Files    IS NULL OR ISJSON(Files)    = 1)
);
