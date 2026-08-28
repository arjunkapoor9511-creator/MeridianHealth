-- ============================================================
-- Product + ProductDetail INSERT statements
-- 31 products: 10 mobility-scooters, 10 manual-wheelchairs,
--              6 power-wheelchairs, 5 falls-prevention-solutions
-- Blob base: https://vercelfiles.blob.core.windows.net/vercelproductfiles/
-- Generated from the scraped README data; run schema.sql first.
-- ============================================================

-- ============================================================
-- Product
-- ============================================================
-- SCT670617 -- Pride Go Go Mg Lite Mobility Scooter
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'pride-go-go-mg-lite-mobility-scooter', N'Pride Go Go Mg Lite Mobility Scooter', N'SCT670617', N'mobility-scooters', N'unitedhealthcare', N'Pride Mobility', 4199.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670617-HERO.png', N'Pride Go Go Mg Lite Mobility Scooter - main', 990, 625, NULL, 16.3, 120, NULL);

-- SCT671710 -- Aspire Elio Small Pull Apart Mobility Scooter
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-elio-compact-pull-apart-mobility-scooter', N'Aspire Elio Small Pull Apart Mobility Scooter', N'SCT671710', N'mobility-scooters', N'unitedhealthcare', N'Aspire', 3495.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-HERO.png', N'main', 1048, 650, 945, 31.8, 136, NULL);

-- SCT671610 -- Aspire Delta Small Pull Apart Mobility Scooter
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-delta-compact-pull-apart-mobility-scooter', N'Aspire Delta Small Pull Apart Mobility Scooter', N'SCT671610', N'mobility-scooters', N'unitedhealthcare', N'Aspire', 2995.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-HERO.png', N'main', 1048, 650, 900, 38.8, 150, NULL);

-- SCT671500 -- Aspire Apollo Small Pull Apart Mobility Scooter
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-apollo-compact-pull-apart-mobility-scooter', N'Aspire Apollo Small Pull Apart Mobility Scooter', N'SCT671500', N'mobility-scooters', N'unitedhealthcare', N'Aspire', 1995.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-HERO.png', N'main', 1090, 550, 910, 53, 136, NULL);

-- SCT670616 -- Aspire Boot Scooter Supalite
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-boot-scooter-supalite', N'Aspire Boot Scooter Supalite', N'SCT670616', N'mobility-scooters', N'unitedhealthcare', N'Aspire', 3699.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670616-HERO.png', N'main', 1022, 490, 880, 34, 120, NULL);

-- SCT671115 -- Aspire Ultralight Compact Mobility Scooter - HS118
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-ultralight-compact-mobility-scooter-hs118', N'Aspire Ultralight Compact Mobility Scooter - HS118', N'SCT671115', N'mobility-scooters', N'unitedhealthcare', N'Aspire', 1999.0, 2769.0, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671115-HERO.png', N'main', 1010, 550, 890, 31, 115, NULL);

-- SCT671135 -- Aspire Mini Manual-Folding Mobility Scooter - HS268
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-mini-manual-folding-mobility-scooter-hs268', N'Aspire Mini Manual-Folding Mobility Scooter - HS268', N'SCT671135', N'mobility-scooters', N'unitedhealthcare', N'Aspire', 1499.0, 1999.0, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671135-HERO.png', N'main', 950, 590, 960, 30.6, NULL, NULL);

-- SCT671211 -- Aspire Oscar Midi Scooter
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-oscar-midi-scooter', N'Aspire Oscar Midi Scooter', N'SCT671211', N'mobility-scooters', N'unitedhealthcare', N'Aspire', 3999.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-HERO.png', N'main', 1200, 640, 1300, 71, 181, NULL);

-- SCT670645 -- Pride Victory Platinum 4 Mobility Scooter
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'pride-victory-platinum-4-mobility-scooter', N'Pride Victory Platinum 4 Mobility Scooter', N'SCT670645', N'mobility-scooters', N'unitedhealthcare', N'Pride Mobility', 5599.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670645-HERO.png', N'main', 1180, 559, NULL, 65, 181, NULL);

-- SCT671261 -- Aspire Sierra Mobility Scooter
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-sierra-mobility-scooter', N'Aspire Sierra Mobility Scooter', N'SCT671261', N'mobility-scooters', N'unitedhealthcare', N'Aspire', 4199.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-HERO.png', N'main', 1290, 625, 1150, 67, 136, NULL);

-- MWS460110 -- mobilityHQ GoLite Wheelchair - Attendant Propelling
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'mobilityhq-golite-wheelchair', N'mobilityHQ GoLite Wheelchair - Attendant Propelling', N'MWS460110', N'manual-wheelchairs', N'unitedhealthcare', N'mobilityHQ', 179.0, 273.0, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460110-HERO.png', N'main', 850, 510, 1010, NULL, 113, N'Attendant');

-- MWS460100 -- mobilityHQ Rover Wheelchair - Self Propelling
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'mobilityhq-rover-wheelchair-self-propelling', N'mobilityHQ Rover Wheelchair - Self Propelling', N'MWS460100', N'manual-wheelchairs', N'unitedhealthcare', N'mobilityHQ', 235.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460100-HERO.png', N'main', 1080, 660, 900, 17.3, 136, N'Self');

-- MWS449872 -- Aspire VIDA MG Ultralight Wheelchair
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-vida-mg-wheelchair', N'Aspire VIDA MG Ultralight Wheelchair', N'MWS449872', N'manual-wheelchairs', N'unitedhealthcare', N'Aspire', 1109.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-HERO.png', N'main', 995, 650, 930, 9, 113, N'Attendant');

-- MWS449882 -- Aspire Vida Folding Manual Wheelchair - Attendant Propelled
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-vida-folding-manual-wheelchair-attendant-propelled', N'Aspire Vida Folding Manual Wheelchair - Attendant Propelled', N'MWS449882', N'manual-wheelchairs', N'unitedhealthcare', N'Aspire', 829.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-HERO.png', N'main - Magenta', 995, 650, 930, 9.7, 135, N'Attendant');

-- MWS449884 -- Aspire Vida Folding Manual Wheelchair - Self Propelled
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-vida-folding-manual-wheelchair-self-propelled', N'Aspire Vida Folding Manual Wheelchair - Self Propelled', N'MWS449884', N'manual-wheelchairs', N'unitedhealthcare', N'Aspire', 889.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-HERO.png', N'main - Magenta', 1040, 690, 950, 11.5, 135, N'Self');

-- MWS449867 -- Aspire Vida X Folding Manual Wheelchair
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-vida-x-folding-manual-wheelchair', N'Aspire Vida X Folding Manual Wheelchair', N'MWS449867', N'manual-wheelchairs', N'unitedhealthcare', N'Aspire', 939.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-HERO.png', N'main - Matte Black', 1040, 690, 950, 12.2, 135, N'Self');

-- MWS449810 -- Aspire Socialite Folding Wheelchair - Attendant Propelled
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-socialite-folding-wheelchair-attendant-propelled', N'Aspire Socialite Folding Wheelchair - Attendant Propelled', N'MWS449810', N'manual-wheelchairs', N'unitedhealthcare', N'Aspire', 829.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-HERO.png', N'main - Red', NULL, 675, NULL, 9, 115, N'Attendant');

-- MWS449830 -- Aspire Socialite Folding Wheelchair - Self Propelled
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-socialite-folding-wheelchair-self-propelled', N'Aspire Socialite Folding Wheelchair - Self Propelled', N'MWS449830', N'manual-wheelchairs', N'unitedhealthcare', N'Aspire', 889.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-HERO.png', N'main - Red', 1030, 675, 900, 13, 115, N'Self');

-- MWS449570 -- Aspire Evoke 2 Youth Wheelchair
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-evoke-2-youth-wheelchair', N'Aspire Evoke 2 Youth Wheelchair', N'MWS449570', N'manual-wheelchairs', N'unitedhealthcare', N'Aspire', 1119.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449570-HERO.png', N'main', NULL, 560, NULL, 14.8, 150, N'Self');

-- MWS442301 -- Aspire Lite Transit Wheelchair
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-lite-transit-wheelchair', N'Aspire Lite Transit Wheelchair', N'MWS442301', N'manual-wheelchairs', N'unitedhealthcare', N'Aspire', 599.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS442301-HERO.png', N'main', NULL, 600, NULL, 11.6, 120, N'Attendant');

-- PWS654150 -- Aspire Aerolite Carbon Fibre Powerchair
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'aspire-aerolite-carbon-fibre-powerchair', N'Aspire Aerolite Carbon Fibre Powerchair', N'PWS654150', N'power-wheelchairs', N'unitedhealthcare', N'Aspire', 3999.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-HERO.png', N'main - Black/Red', 960, 630, 895, 15.2, 120, NULL);

-- PWS655400 -- Whill Model C2 Power Wheelchair
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'whill-model-c2-power-wheelchair', N'Whill Model C2 Power Wheelchair', N'PWS655400', N'power-wheelchairs', N'unitedhealthcare', N'WHILL', 10399.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS655400-HERO.png', N'main', 985, 554, 945, NULL, 136, NULL);

-- PWS654269 -- Jazzy 1450
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'jazzy-1450', N'Jazzy 1450', N'PWS654269', N'power-wheelchairs', N'unitedhealthcare', N'Pride Mobility', 18879.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654269-HERO.png', N'main', 970, 742, NULL, NULL, 273, NULL);

-- PWS654160 -- Pride Jazzy Carbon Max Power Wheelchair
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'pride-jazzy-carbon-max-power-wheelchair', N'Pride Jazzy Carbon Max Power Wheelchair', N'PWS654160', N'power-wheelchairs', N'unitedhealthcare', N'Pride Mobility', 5199.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654160-HERO.png', N'main', 890, 590, NULL, 11.5, 136, NULL);

-- PWS654200RE -- Pride Go Chair Next Generation
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'pride-go-chair-next-generation', N'Pride Go Chair Next Generation', N'PWS654200RE', N'power-wheelchairs', N'unitedhealthcare', N'Pride Mobility', 4619.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654200RE-HERO.png', N'main - Red', 838, 570, NULL, NULL, 136, NULL);

-- PWS654242 -- Jazzy Select 6
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'jazzy-select-6', N'Jazzy Select 6', N'PWS654242', N'power-wheelchairs', N'unitedhealthcare', N'Pride Mobility', 5689.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654242-HERO.png', N'main', 900, 600, NULL, NULL, 136, NULL);

-- BEA007618 -- Alerta - Wireless - Deluxe Alertamat
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'alerta-wireless-deluxe-alertamat', N'Alerta - Wireless - Deluxe Alertamat', N'BEA007618', N'falls-prevention-solutions', N'humana', N'Alerta', 749.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007618-HERO.png', N'main', NULL, NULL, NULL, NULL, NULL, NULL);

-- BEA007570 -- Alerta - Wireless - Deluxe Alertamat System
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'alerta-wireless-deluxe-alertamat-system', N'Alerta - Wireless - Deluxe Alertamat System', N'BEA007570', N'falls-prevention-solutions', N'humana', N'Alerta', 999.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007570-HERO.png', N'main', NULL, NULL, NULL, NULL, NULL, NULL);

-- BEA007675 -- Alerta - Wireless - Detect Sensor
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'alerta-wireless-detect-sensor', N'Alerta - Wireless - Detect Sensor', N'BEA007675', N'falls-prevention-solutions', N'humana', N'Alerta', 394.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007675-HERO.png', N'main', NULL, NULL, NULL, NULL, NULL, NULL);

-- BEA007623 -- Alerta - Wireless - Floor+ Alertamat
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'alerta-wireless-floor-alertamat', N'Alerta - Wireless - Floor+ Alertamat', N'BEA007623', N'falls-prevention-solutions', N'humana', N'Alerta', 454.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007623-HERO.png', N'main', NULL, NULL, NULL, NULL, NULL, NULL);

-- BEA007575 -- Alerta - Wireless - Floor+ Alertamat System
INSERT INTO dbo.Product (Slug, Name, Sku, Category, InsuranceProviderSlug, BrandName, Price, CompareAtPrice, GridImageUrl, GridImageAlt, LengthMm, WidthMm, HeightMm, WeightKg, SafeWorkingLoadKg, PropellingMethod)
VALUES (N'alerta-wireless-floor-alertamat-system', N'Alerta - Wireless - Floor+ Alertamat System', N'BEA007575', N'falls-prevention-solutions', N'humana', N'Alerta', 829.0, NULL, N'https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007575-HERO.png', N'main', NULL, NULL, NULL, NULL, NULL, NULL);


-- ============================================================
-- ProductDetail (1:1 via Product.Sku lookup)
-- ============================================================
-- SCT670617 -- Pride Go Go Mg Lite Mobility Scooter
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       N'Ultra lightweight, portable.',
       N'Experience ultimate portability with the Go Go Mg Lite mobility scooter, designed for travel, convenience, and independence. Reaching speeds of up to 6.4 km/h, it features an ultra-light magnesium foldable frame weighing just 17.9 kg.',
       NULL,
       N'{"overallLengthMm": 990, "overallWidthMm": 625, "seatWidthMm": 420, "maxSpeedKmh": 6.4, "rangeKm": 15, "batteryType": "12V 11Ah Lithium", "productWeightKg": 16.3, "safeWorkingLoadKg": 120}',
       N'["Ultra-lightweight magnesium alloy frame (12 kg heaviest piece)", "Easy disassemble for transport and storage", "Compact foldable seat (42 cm x 34 cm) for packability", "Digital display with contactless lock", "Battery level display for at-a-glance charge monitoring"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670617-HERO.png", "alt": "Pride Go Go Mg Lite Mobility Scooter - main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670617-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670617-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}]',
       N'[]',
       N'https://shop.aidacare.com.au/products/pride-go-go-mg-lite-mobility-scooter'
FROM dbo.Product WHERE Sku = N'SCT670617';

-- SCT671710 -- Aspire Elio Small Pull Apart Mobility Scooter
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Built for an active lifestyle, Elio''s lightweight design, flexible battery options, and comfort features offer confident, independent mobility, perfect for shopping, social visits, or days out.',
       N'Scooter Frame, Motors, Axles, Brakes: 2 Years; Battery: 6 Months; Electronics: 1 Year',
       N'{"overallLengthMm": 1048, "overallWidthRangeMm": "550-650", "overallHeightMm": 945, "seatDepthMm": 400, "seatWidthRangeMm": "450-550", "maxSpeedKmh": 6.4, "rangeKm": 24, "batteryType": "1 x 24V 20Ah (Lithium)", "heaviestPartKg": 10.8, "totalWeightKg": 31.8, "safeWorkingLoadKg": 136}',
       N'["Light to Lift: At just 10.8kg, the heaviest part is easy for carers to lift and fits neatly in most car boots or storage spaces.", "Ultra-lightweight Aluminium Frame: Easily disassembles into five compact parts for effortless transport and storage.", "Additional Battery Options Available: Standard range battery up to 24km. Extended and airline-approved batteries also available (up to 35km).", "Small Turning Circle: Ideal for navigating through tight spaces such as hallways, lifts, or small shops without frequent repositioning or reversing.", "Shock-absorbing Suspension: 4-wheel independent suspension absorbs bumps from uneven surfaces for a smooth ride.", "Intuitive Controls: Navigate with confidence using an intuitive dashboard featuring an LED battery display, speed controls, and a horn.", "Smooth Transfers, Ultimate Comfort: Height-adjustable, swivelling padded seat ensures easy side transfers every time.", "Flexible Tiller Angle for Personalised Handling: Quickly adjusts to your ideal position, delivering a smooth and comfortable driving experience."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-FLYER.pdf", "sizeBytes": 1806226}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671710-MANUAL.pdf", "sizeBytes": 3757870}]',
       N'https://shop.aidacare.com.au/products/aspire-elio-compact-pull-apart-mobility-scooter'
FROM dbo.Product WHERE Sku = N'SCT671710';

-- SCT671610 -- Aspire Delta Small Pull Apart Mobility Scooter
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Engineered for convenience and performance, with practical features that make everyday mobility easier and more enjoyable.',
       N'Scooter Frame, Motors, Axles, Brakes: 2 Years; Battery: 6 Months; Electronics: 1 Year',
       N'{"overallLengthMm": 1048, "overallWidthRangeMm": "550-650", "overallHeightMm": 900, "seatDepthMm": 400, "seatWidthRangeMm": "450-500", "maxSpeedKmh": 6.4, "rangeKm": 24, "batteryType": "1 x 24V 20Ah (Lithium)", "heaviestPartKg": 15.7, "totalWeightKg": 38.8, "safeWorkingLoadKg": 150}',
       N'["Class-leading 150kg SWL: Offers enhanced support and stability for a wider range of users.", "Adjustable Tiller for Effortless Control: Easily adjusts to your preferred angle for a more comfortable and personalised ride.", "Compact Pull-apart Design: Easily disassembles into five parts for effortless lifting and transport.", "Additional Battery Options Available: Standard range battery up to 24km. Extended and airline-approved batteries also available (up to 35km).", "4-wheel Independent Suspension: Enhanced suspension absorbs bumps and uneven surfaces, for a smoother ride.", "Tight Turning Radius: Experience seamless navigation in tight spaces, perfect for confident indoor mobility.", "Smooth Transfers, Ultimate Comfort: Height-adjustable, swivelling padded seat ensures easy side transfers every time.", "Intuitive Controls: Navigate with confidence using an intuitive dashboard featuring an LED battery display, speed controls, and a horn."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 999}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-FLYER.pdf", "sizeBytes": 3484483}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671610-MANUAL.pdf", "sizeBytes": 3657991}]',
       N'https://shop.aidacare.com.au/products/aspire-delta-compact-pull-apart-mobility-scooter'
FROM dbo.Product WHERE Sku = N'SCT671610';

-- SCT671500 -- Aspire Apollo Small Pull Apart Mobility Scooter
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Stylish and portable everyday independence for users seeking reliable mobility support at home and in the community.',
       N'Scooter Frame, Motors, Axles, Brakes: 2 Years; Battery: 6 Months; Electronics: 1 Year',
       N'{"overallLengthMm": 1090, "overallWidthRangeMm": "450-550", "overallHeightMm": 910, "seatDepthMm": 400, "seatWidthRangeMm": "450-550", "maxSpeedKmh": 6, "rangeKm": 12, "batteryType": "2 x 12V 12Ah", "totalWeightKg": 53, "safeWorkingLoadKg": 136}',
       N'["Personalised Style: Supplied in a vibrant red, with seven optional plug-and-play colour panel accessories to suit your style.", "Pull-apart Portability: Breaks down into five parts for safe lifting, transport, and compact storage.", "LED Battery Status Indicator: Clear battery monitor helps you travel with confidence.", "Electromagnetic Brakes: Provide reliable, controlled stopping for added user safety.", "LED Headlight: Easily visible for nearby pedestrians and vehicles in low-light environments.", "Seat Functionality: Features a swivel, height-adjustable seat to support easy side transfers and ride comfort."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-ANGLE-6.png", "alt": "angle 6", "sortOrder": 6, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-FLYER.pdf", "sizeBytes": 3149686}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671500-MANUAL.pdf", "sizeBytes": 3768093}]',
       N'https://shop.aidacare.com.au/products/aspire-apollo-compact-pull-apart-mobility-scooter'
FROM dbo.Product WHERE Sku = N'SCT671500';

-- SCT670616 -- Aspire Boot Scooter Supalite
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The ultimate portable travel scooter-stable, compact, and easy to manoeuvre. Features a foldable seat with armrests for comfort and convenience. Perfect for travel, whether at home, hotels, or airports.',
       N'Scooter Frame: 2 Years; Motors/Axles/Brakes: 2 Years; Battery: 6 Months',
       N'{"overallLengthMm": 1022, "overallWidthMm": 490, "overallHeightMm": 880, "seatWidthMm": 440, "frontRearWheelSize": "8\"/8\"", "maxSpeedKmh": 6.5, "groundClearanceMm": 32, "turningRadiusMm": 1385, "rangeKm": 18.5, "batteryType": "1 x 24V 12AH (lithium ion)", "productWeightKg": 34, "safeWorkingLoadKg": 120}',
       N'["Exceptionally stable and manoeuvrable 4-wheel travel scooter", "Class-leading, ultra-lightweight design, maximum speed up to 6.5 km/h", "Compact, foldable seat with armrests", "Easy-to-grip tiller adjustment knob and handles", "Stable, front frame-mounted seat post", "Standard front basket provides storage", "Easy to transport at home, hotels, or airports", "Disassembles into 6 lightweight pieces for easy transport and storage (heaviest piece 10.7 kg)"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670616-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670616-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670616-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670616-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670616-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670616-FLYER.pdf", "sizeBytes": 3900364}]',
       N'https://shop.aidacare.com.au/products/aspire-boot-scooter-supalite'
FROM dbo.Product WHERE Sku = N'SCT670616';

-- SCT671115 -- Aspire Ultralight Compact Mobility Scooter - HS118
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Aspire HS118 is an ultralight portable scooter, designed for easy lifting in and out of a vehicle. Packed with category leading features, this scooter offers a 14km range and is perfect for indoor and outdoor use.',
       N'Scooter: 2 Years; Batteries: 6 Months',
       N'{"overallLengthMm": 1010, "overallWidthMm": 550, "overallHeightMm": 890, "seatWidthMm": 430, "frontRearWheelSize": "8\"/8\"", "maxSpeedKmh": 6.4, "groundClearanceMm": 35, "turningRadiusMm": 1350, "rangeKm": 14, "batteryType": "1 x 11.6AH", "productWeightKg": 31, "safeWorkingLoadKg": 115}',
       N'["Lightweight aluminium frame extends travel range", "Disassembles into 5 pieces with the heaviest component weighing only 10.2kg", "Max speed of 6.4km/h", "Range of 14km", "Adjustable steering to achieve your perfect driving position", "Swivelling seat with adjustable armrests make entry, exit and transfer easy"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671115-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671115-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671115-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671115-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671115-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671115-FLYER.pdf", "sizeBytes": 920182}]',
       N'https://shop.aidacare.com.au/products/aspire-ultralight-compact-mobility-scooter-hs118'
FROM dbo.Product WHERE Sku = N'SCT671115';

-- SCT671135 -- Aspire Mini Manual-Folding Mobility Scooter - HS268
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'This compact four wheel mobility scooter is easily transported or stored! Great mobility scooter for smaller, quick trips such as getting around the local shopping mall. As it folds down, the scooter can be stored easily and assembled quickly when needed.',
       N'Scooter Frame: 1 Year; Motors/Axles/Brakes: 1 Year; Battery: 6 Months',
       N'{"overallLengthMm": 950, "foldedLengthMm": 775, "overallWidthMm": 590, "foldedWidthMm": 495, "overallHeightMm": 960, "foldedHeightMm": 510, "seatWidthMm": 420, "frontRearWheelSize": "8\"/8\"", "maxSpeedKmh": 8, "groundClearanceMm": 43, "turningRadiusMm": 1120, "rangeKm": 20, "batteryType": "1 x 12V 11.6AH (lithium ion)", "productWeightKg": 30.6}',
       N'["Manual folding via hand lever", "LED headlights and brake lights", "Intuitive user control interface", "Approved for air travel", "Electro Mechanical Brakes", "Fast charging Lithium Ion battery", "Seat Width 419 mm", "Folded Size: 495 (H) x 775 (L) x 510 (W) mm", "Clearance items are subject to availability"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671135-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671135-FLYER.pdf", "sizeBytes": 27307125}, {"label": "Selection Guide", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671135-SELECTION-GUIDE.pdf", "sizeBytes": 670599}]',
       N'https://shop.aidacare.com.au/products/aspire-mini-manual-folding-mobility-scooter-hs268'
FROM dbo.Product WHERE Sku = N'SCT671135';

-- SCT671211 -- Aspire Oscar Midi Scooter
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Oscar''s compact frame, responsive controls, and reliable power make it perfect for everyday trips around your community.',
       N'Scooter Frame/Motors/Axles/Brakes: 2 Years; Electronics: 1 Year; Battery: 6 Months',
       N'{"overallLengthMm": 1200, "overallWidthMm": 640, "overallHeightMm": 1300, "seatDepthMm": 450, "seatWidthRangeMm": "440-490", "maxSpeedKmh": 10, "rangeKm": 39, "unitWeightExclBatteryKg": 71, "batteryWeightKg": 30, "safeWorkingLoadKg": 181}',
       N'["Extended Travel Range: Lead-acid battery offers up to 39km on a single charge, reducing the need for frequent recharging", "Plush, Supportive Seating: Features a deeply padded, adjustable captain''s seat with suspension, and flexible tiller", "Smart Safety: Emergency stop button and automatic speed reduction while turning keeps you safe and secure", "Comfortable Ride: Independent suspension absorbs bumps and reduces vibrations for comfort on uneven surfaces", "Simple and Intuitive Controls: Straightforward analogue interface is easy for new and experienced users to operate", "Compact and Agile Navigation: With a 1400mm turning circle, it easily manoeuvres in tight indoor spaces and busy community areas"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-ANGLE-6.png", "alt": "angle 6", "sortOrder": 6, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-ANGLE-7.png", "alt": "angle 7", "sortOrder": 7, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-FLYER.pdf", "sizeBytes": 3773105}, {"label": "Accessory Guide", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-ACCESSORY-GUIDE.pdf", "sizeBytes": 7505167}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671211-MANUAL.pdf", "sizeBytes": 2338200}]',
       N'https://shop.aidacare.com.au/products/aspire-oscar-midi-scooter'
FROM dbo.Product WHERE Sku = N'SCT671211';

-- SCT670645 -- Pride Victory Platinum 4 Mobility Scooter
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Victory (Platinum) 4-wheel scooter offers a premium mobility experience. Patented EZ Turn technology helps you navigate tight spaces with 3-wheel precision.',
       NULL,
       N'{"overallLengthMm": 1180, "overallWidthMm": 559, "seatWidthMm": 460, "seatDepthMm": 508, "maxSpeedKmh": 10, "rangeKm": 40, "batteryType": "2 x 12V 50Ah", "productWeightExclBatteryKg": 65, "safeWorkingLoadKg": 181, "turningRadiusCm": 113, "heaviestPartKg": 30.4}',
       N'["Patented EZ Turn technology helps achieve a 113 cm turning radius", "Full front and rear suspension for confident performance on uneven terrain", "Features Charge360 exclusive magnetic charging", "Pillow-top high-back seat with height adjustment", "High weight capacity of 181 kg", "Disassembles for transport with a 30.4 kg heaviest piece", "Solid tyres for durability"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670645-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT670645-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}]',
       N'[]',
       N'https://shop.aidacare.com.au/products/pride-victory-platinum-4-mobility-scooter'
FROM dbo.Product WHERE Sku = N'SCT670645';

-- SCT671261 -- Aspire Sierra Mobility Scooter
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Designed for outdoor use over varied terrain, it combines a classic style with quiet operation, excellent stability, and user-friendly controls.',
       NULL,
       N'{"overallLengthMm": 1290, "overallWidthMm": 625, "overallHeightMm": 1150, "seatDepthMm": 450, "seatWidthRangeMm": "480-530", "maxSpeedKmh": 10, "rangeKm": 40, "batteryType": "2 x 12V 50Ah (Lead Acid) (30kg)", "unitWeightExclBatteryKg": 67, "safeWorkingLoadKg": 136, "turningCircleMm": 1565}',
       N'["Extended Daily Travel: High-capacity lead-acid batteries provide up to 40 km of range per charge", "Stable and Secure on Every Trip: 4-wheel configuration with front and rear independent suspension", "Simple and Intuitive Controls: Straightforward analogue interface", "Designed for Easy Manoeuvring: A tight 1565 mm turning circle", "Plush, Supportive Seating: Deeply padded, adjustable captain''s seat and flexible tiller", "Smart Safety: Emergency stop button and automatic speed reduction while turning", "Powerful Performance: 700 W nominal / 1400 W peak motor and electro-mechanical brake system", "Durable Tyres: Large 290 mm pneumatic tyres", "Convenient Charging: 24 V 5 A charger", "Strong Load Capacity: Safe Working Load (SWL) of 136 kg", "Two Stylish Colours: Available in Arctic Mist and Desert Sand"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-6.png", "alt": "angle 6", "sortOrder": 6, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-7.png", "alt": "angle 7", "sortOrder": 7, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-8.png", "alt": "angle 8", "sortOrder": 8, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-ANGLE-9.png", "alt": "both colours", "sortOrder": 9, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/SCT671261-FLYER.pdf", "sizeBytes": 3097293}]',
       N'https://shop.aidacare.com.au/products/aspire-sierra-mobility-scooter'
FROM dbo.Product WHERE Sku = N'SCT671261';

-- MWS460110 -- mobilityHQ GoLite Wheelchair - Attendant Propelling
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'This is an online product only. The GoLite Folding Wheelchair is a compact transport wheelchair suitable for quick shopping and appointment trips.',
       N'1 Year',
       N'{"propellingMethod": "Attendant", "safeWorkingLoadKg": 113, "seatWidthMm": 380, "seatDepthMm": 400, "seatHeightMm": 480, "overallLengthMm": 850, "overallWidthMm": 510, "overallHeightMm": 1010, "backrestHeightMm": 470, "armrestHeightMm": 245}',
       N'["Simple Access and Adjustments: Swing away and height adjustable footrests allow for easy transfers and positioning for users.", "Safe and Secure: Safety lap belt and locking hand brakes to protect the user from sudden stopping and from drifting from a neutral position.", "Made to Last: Strong steel frame and Nylon Upholstery provide durability and support for all users."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460110-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460110-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460110-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}]',
       N'[{"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460110-MANUAL.pdf", "sizeBytes": 1250323}]',
       N'https://shop.aidacare.com.au/products/mobilityhq-golite-wheelchair'
FROM dbo.Product WHERE Sku = N'MWS460110';

-- MWS460100 -- mobilityHQ Rover Wheelchair - Self Propelling
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'This is an online product only. The Rover Folding Wheelchair is designed for easy storage and transport, helping people with mobility issues travel outside the home or facility.',
       N'1 Year',
       N'{"propellingMethod": "Self", "safeWorkingLoadKg": 136, "seatWidthMm": 450, "seatDepthMm": 400, "seatHeightMm": 500, "overallLengthMm": 1080, "overallWidthMm": 660, "overallHeightMm": 900, "backrestHeightMm": 430, "armrestHeightMm": 260, "unitWeightKg": 17.3}',
       N'["Comfortable Self Propelling: Solid 24-inch rear wheels fitted with smooth hand rims.", "Easy Access and Positioning: Swing away, height adjustable footrests and swing up armrests promote easier transfers and access under tables.", "Made to Last: Strong steel frame and Nylon Upholstery provide durability and support for all users."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460100-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460100-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460100-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460100-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460100-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}]',
       N'[{"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS460100-MANUAL.pdf", "sizeBytes": 876287}]',
       N'https://shop.aidacare.com.au/products/mobilityhq-rover-wheelchair-self-propelling'
FROM dbo.Product WHERE Sku = N'MWS460100';

-- MWS449872 -- Aspire VIDA MG Ultralight Wheelchair
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The VIDA MG, made from ultra-light magnesium and weighing just 6.7kg, opens up a world of freedom and convenience - perfect for those who love to travel and explore without limits.',
       N'Frame: 5 Years; Components: 1 Year',
       N'{"propellingMethod": "Attendant", "overallLengthMm": 995, "overallWidthMm": 650, "overallHeightMm": 930, "seatDepthMm": 420, "seatWidthMm": 450, "anteriorSeatHeightMm": 500, "posteriorSeatHeightMm": 460, "backrestHeightMm": 460, "armrestHeightMm": 200, "rearWheelSizeIn": 13, "unitWeightKg": 9, "safeWorkingLoadKg": 113}',
       N'["Ergonomic contoured seat shape maximises comfort and supports posture by preventing users from sliding forward in the seat", "Adjustable and detachable leg rests designed for ease of storage and transport.", "Intuitive folding frame and hinged backrest make transportation compact and easy.", "Rear storage pocket for essentials.", "Attendant operated hand brakes with parking lock.", "Available as attendant propelled or self-propelled.", "Lap belt (WCA848300)", "Anti-tippers included for added stability", "Quick release wheels"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-ANGLE-1.png", "alt": "self propelled", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-ANGLE-2.png", "alt": "detail", "sortOrder": 2, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-ANGLE-3.png", "alt": "detail", "sortOrder": 3, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-ANGLE-4.png", "alt": "angle", "sortOrder": 4, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-ANGLE-5.png", "alt": "angle", "sortOrder": 5, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-ANGLE-6.png", "alt": "angle", "sortOrder": 6, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-ANGLE-7.png", "alt": "angle", "sortOrder": 7, "width": 550, "height": 550}]',
       N'[{"label": "Accessory Guide", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-ACCESSORY-GUIDE.pdf", "sizeBytes": 5097824}, {"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-FLYER.pdf", "sizeBytes": 3002846}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449872-MANUAL.pdf", "sizeBytes": 1973015}]',
       N'https://shop.aidacare.com.au/products/aspire-vida-mg-wheelchair'
FROM dbo.Product WHERE Sku = N'MWS449872';

-- MWS449882 -- Aspire Vida Folding Manual Wheelchair - Attendant Propelled
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Aspire Vida is a super lightweight transport wheelchair ideal for quick trips to the shops, appointments and catching up with friends.',
       N'Frame: 5 Years; Fabric & Components: 1 Year',
       N'{"propellingMethod": "Attendant", "colour": "Magenta", "totalHeightMm": 930, "totalLengthMm": 995, "totalWidthMm": 650, "unitWeightKg": 9.7, "backrestHeightMm": 430, "armrestHeightMm": 200, "seatDepthMm": 420, "seatWidthMm": 450, "anteriorSeatHeightMm": 500, "posteriorSeatHeightMm": 460, "rearWheelSizeIn": 13, "safeWorkingLoadKg": 135}',
       N'["The 135kg safe working load caters to a broad range of users", "Lightweight frame design ensures easy lifting in and out of cars, ideal for carers.", "Contoured and padded seating improves comfort and postural support.", "Attendant operated hand brakes with parking lock.", "Simple and intuitive folding for easy transportation.", "Removable leg rests and folding back for compact storage.", "Rear storage pocket for essentials.", "Available as attendant propelled or self-propelled."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-HERO.png", "alt": "main - Magenta", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-ANGLE-5.png", "alt": "Teal colour", "sortOrder": 5, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-FLYER.pdf", "sizeBytes": 1990672}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449882-MANUAL.pdf", "sizeBytes": 1973015}]',
       N'https://shop.aidacare.com.au/products/aspire-vida-folding-manual-wheelchair-attendant-propelled'
FROM dbo.Product WHERE Sku = N'MWS449882';

-- MWS449884 -- Aspire Vida Folding Manual Wheelchair - Self Propelled
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Aspire Vida is a super lightweight transport wheelchair ideal for quick trips to the shops, appointments and catching up with friends.',
       N'Frame: 5 Years; Fabric & Components: 1 Year',
       N'{"propellingMethod": "Self", "colour": "Magenta", "totalHeightMm": 950, "totalLengthMm": 1040, "totalWidthMm": 690, "unitWeightKg": 11.5, "backrestHeightMm": 430, "armrestHeightMm": 200, "seatDepthMm": 420, "seatWidthMm": 450, "anteriorSeatHeightMm": 500, "posteriorSeatHeightMm": 460, "rearWheelSizeIn": 22, "safeWorkingLoadKg": 135}',
       N'["Ergonomic backrest and seat shape follow the contours of the user to maximise comfort and postural support.", "The 135kg safe working load caters to a broad range of users.", "Lightweight frame design ensures easy lifting in and out of cars, ideal for carers.", "Contoured and padded seating improves comfort and postural support.", "Attendant operated hand brakes with parking lock.", "Simple and intuitive folding for easy transportation.", "Removable leg rests and folding back for compact storage.", "Rear storage pocket for essentials.", "Available as attendant propelled or self-propelled."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-HERO.png", "alt": "main - Magenta", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-ANGLE-6.png", "alt": "Mustard colour", "sortOrder": 6, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-ANGLE-7.png", "alt": "Olive colour", "sortOrder": 7, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-ANGLE-8.png", "alt": "Teal colour", "sortOrder": 8, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-FLYER.pdf", "sizeBytes": 1990672}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449884-MANUAL.pdf", "sizeBytes": 1973015}]',
       N'https://shop.aidacare.com.au/products/aspire-vida-folding-manual-wheelchair-self-propelled'
FROM dbo.Product WHERE Sku = N'MWS449884';

-- MWS449867 -- Aspire Vida X Folding Manual Wheelchair
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Aspire VIDA X is an ultra-modern, super-lightweight transport wheelchair designed for mobility, convenience, comfort and style.',
       N'5 Years',
       N'{"propellingMethod": "Self", "colour": "Matte Black", "overallLengthMm": 1040, "overallWidthMm": 690, "overallHeightMm": 950, "seatDepthMm": 420, "seatWidthMm": 450, "anteriorSeatHeightMm": 500, "posteriorSeatHeightMm": 460, "backrestHeightMm": 430, "armrestHeightMm": 200, "rearWheelSizeIn": 22, "unitWeightKg": 12.2, "safeWorkingLoadKg": 135}',
       N'["Lightweight aluminium frame for improved handling and manoeuvrability", "Self propelled", "Padded seat and backrest upholstery", "Soft padded armrests assist during ingress and egress", "Height adjustable legrests for enhanced comfort", "Storage pouch for everyday essentials", "Folds down for easy storage and transportation"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-HERO.png", "alt": "main - Matte Black", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-ANGLE-2.png", "alt": "Purple colour", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-ANGLE-3.png", "alt": "Purple angle", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-ANGLE-4.png", "alt": "Purple angle", "sortOrder": 4, "width": 1000, "height": 1000}]',
       N'[{"label": "Clinical Assistance Guide", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-CLINICAL-GUIDE.pdf", "sizeBytes": 560643}, {"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-FLYER.pdf", "sizeBytes": 712076}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449867-MANUAL.pdf", "sizeBytes": 1973015}]',
       N'https://shop.aidacare.com.au/products/aspire-vida-x-folding-manual-wheelchair'
FROM dbo.Product WHERE Sku = N'MWS449867';

-- MWS449810 -- Aspire Socialite Folding Wheelchair - Attendant Propelled
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Aspire Socialite is an ultra light weight transport chair perfect for short trips and outings with friends. The generous 115kg safe working load caters to a broad range of users.',
       N'Frame: 5 Years; Fabric & Components: 1 Year',
       N'{"propellingMethod": "Attendant", "colour": "Red", "safeWorkingLoadKg": 115, "backrestHeightMm": 410, "seatDepthMm": 450, "seatToTopOfArmrestMm": 200, "seatWidthMm": 430, "overallWidthMm": 675, "unitWeightKg": 9}',
       N'["Padded and breathable seat and back provide optimum comfort and postural support.", "Cut away arms improve table access and the offset uprights create hip space for coats and warmer clothing.", "Sleek European design.", "Stylish contemporary colours.", "One of the lightest transport chairs available.", "Perfect for outings and appointments.", "Attendant operated hand brakes with parking lock.", "Simple and intuitive folding for easy transportation.", "Removable leg rests and folding back for compact storage.", "Contoured seating improves comfort and postural support.", "Rear storage pocket for essentials."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-HERO.png", "alt": "main - Red", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-ANGLE-1.png", "alt": "Silver colour", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-FLYER.pdf", "sizeBytes": 2240323}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449810-MANUAL.pdf", "sizeBytes": 1159394}]',
       N'https://shop.aidacare.com.au/products/aspire-socialite-folding-wheelchair-attendant-propelled'
FROM dbo.Product WHERE Sku = N'MWS449810';

-- MWS449830 -- Aspire Socialite Folding Wheelchair - Self Propelled
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Aspire Socialite is an ultra light weight transport chair perfect for short trips and outings with friends.',
       N'Frame: 5 Years; Fabric & Components: 1 Year',
       N'{"propellingMethod": "Self", "colour": "Red", "safeWorkingLoadKg": 115, "backrestHeightMm": 410, "seatDepthMm": 450, "seatWidthMm": 430, "overallHeightMm": 900, "overallWidthMm": 675, "overallLengthMm": 1030, "rearWheelSizeIn": 22, "unitWeightKg": 13, "foldedDimensionsMm": "650x380x740"}',
       N'["The generous 115kg safe working load caters to a broad range of users.", "Padded and breathable seat and back provide optimum comfort and postural support.", "Cut away arms improve table access and the offset uprights create hip space for coats and warmer clothing.", "22\" rear wheels for user self-propulsion.", "Sleek European design.", "Stylish contemporary colours.", "One of the lightest transport chairs available.", "Perfect for outings and appointments.", "Attendant operated hand brakes with parking lock.", "Simple and intuitive folding for easy transportation.", "Removable leg rests and folding back for compact storage.", "Contoured seating improves comfort and postural support.", "Rear storage pocket for essentials.", "Folded Dimensions (DxWxH): 650 x 380 x 740 mm"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-HERO.png", "alt": "main - Red", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-6.png", "alt": "angle 6", "sortOrder": 6, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-7.png", "alt": "Silver colour", "sortOrder": 7, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-8.png", "alt": "Silver angle", "sortOrder": 8, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-9.png", "alt": "Silver angle", "sortOrder": 9, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449830-ANGLE-10.png", "alt": "Silver angle", "sortOrder": 10, "width": 550, "height": 550}]',
       N'[]',
       N'https://shop.aidacare.com.au/products/aspire-socialite-folding-wheelchair-self-propelled'
FROM dbo.Product WHERE Sku = N'MWS449830';

-- MWS449570 -- Aspire Evoke 2 Youth Wheelchair
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Ultra-lightweight transport wheelchair is easily folded and stowed. All of the adjustable features of the Evoke 2, reduced in size to suit the unique needs of children and young adults.',
       N'Frame: 2 Years; Components: 1 Year',
       N'{"propellingMethod": "Self", "colour": "Silver", "seatWidthMm": 350, "overallWidthMm": 560, "seatDepthRangeMm": "350-425", "seatHeightRangeMm": "440-480", "backrestHeightRangeMm": "430-490", "armrestHeightRangeMm": "205-225", "minimumChairWeightKg": 14.8, "safeWorkingLoadKg": 150}',
       N'["Folding lightweight design", "Swing-In/Out, Height-Adjustable and Removable Foot Rests", "Height-Adjustable and Removable Armrests", "Strong Nylon Upholstery", "Depth-Adjustable Seating with Rear Angle Adjustability", "Quick-Release 20\" Solid Rear Wheels", "Crash Test Approved AS/NZS 3696.19"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449570-HERO.png", "alt": "main", "sortOrder": 0, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449570-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449570-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449570-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449570-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 550, "height": 550}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449570-FLYER.pdf", "sizeBytes": 348681}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS449570-MANUAL.pdf", "sizeBytes": 1506482}]',
       N'https://shop.aidacare.com.au/products/aspire-evoke-2-youth-wheelchair'
FROM dbo.Product WHERE Sku = N'MWS449570';

-- MWS442301 -- Aspire Lite Transit Wheelchair
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Lite Transit is an ultra-lightweight wheelchair for the occasional user. It comes with attendant brakes fitted as standard, for improved manoeuvring.',
       N'Frame: 2 Years; Components: 1 Year',
       N'{"propellingMethod": "Attendant", "colour": "Champagne", "material": "Aluminium", "seatWidthMm": 460, "overallWidthMm": 600, "seatDepthMm": 400, "seatHeightMm": 460, "backrestHeightMm": 465, "armrestHeightMm": 235, "minimumChairWeightKg": 11.6, "safeWorkingLoadKg": 120}',
       N'["An ultra-light, folding frame - for easy storage and transport. Weighs just 11.5kg.", "Ergonomic handles - provides comfort for the caregiver.", "Push button, height adjustable arm rests - ideal for weak or arthritic hands.", "Swing away, flip up foot plates - this facilitates user transfers.", "12\" rear wheels - with easy to access brakes, for improved riding over outdoor terrain."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS442301-HERO.png", "alt": "main", "sortOrder": 0, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS442301-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 550, "height": 550}]',
       N'[{"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS442301-MANUAL.pdf", "sizeBytes": 450918}, {"label": "Selection Guide", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/MWS442301-SELECTION-GUIDE.pdf", "sizeBytes": 137048}]',
       N'https://shop.aidacare.com.au/products/aspire-lite-transit-wheelchair'
FROM dbo.Product WHERE Sku = N'MWS442301';

-- PWS654150 -- Aspire Aerolite Carbon Fibre Powerchair
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Aerolite Power Wheelchair offers lightweight, user-friendly mobility for individuals seeking simplicity and convenience.',
       N'Frame: 2 Years; Components: 1 Year',
       N'{"colour": "Black / Red", "totalHeightMm": 895, "totalLengthMm": 960, "totalWidthMm": 630, "maxSpeedKmh": 6, "rangeKm": 20, "seatWidthMm": 450, "seatDepthMm": 400, "turningRadiusMm": 900, "foldedDimensionsMm": "960x315x800", "unitWeightKg": 15.2, "safeWorkingLoadKg": 120}',
       N'["Foldable Design: Ideal for travel and easy to lift into the car. Tool-free assembly and disassembly make setup quick and hassle-free.", "Two lithium-ion batteries are included as standard.", "IATA-approved for air travel.", "Low-maintenance, puncture-proof solid tires let users travel confidently on different surfaces.", "The intuitive joystick simplifies navigation, reducing strain and promoting greater comfort and efficiency in daily activities.", "Flip-up footplates improve transfer safety during seat entry and exit."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-HERO.png", "alt": "main - Black/Red", "sortOrder": 0, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-3.png", "alt": "angle 3", "sortOrder": 3, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-4.png", "alt": "angle 4", "sortOrder": 4, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-5.png", "alt": "angle 5", "sortOrder": 5, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-6.png", "alt": "angle 6", "sortOrder": 6, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-7.png", "alt": "angle 7", "sortOrder": 7, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-8.png", "alt": "angle 8", "sortOrder": 8, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-9.png", "alt": "angle 9", "sortOrder": 9, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-10.png", "alt": "angle 10", "sortOrder": 10, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-11.png", "alt": "angle 11", "sortOrder": 11, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-12.png", "alt": "Blue colour", "sortOrder": 12, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-13.png", "alt": "Blue angle", "sortOrder": 13, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-ANGLE-14.png", "alt": "Blue angle", "sortOrder": 14, "width": 550, "height": 550}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-FLYER.pdf", "sizeBytes": 4700400}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654150-MANUAL.pdf", "sizeBytes": 5014545}]',
       N'https://shop.aidacare.com.au/products/aspire-aerolite-carbon-fibre-powerchair'
FROM dbo.Product WHERE Sku = N'PWS654150';

-- PWS655400 -- Whill Model C2 Power Wheelchair
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The WHILL Model C2 is a revolutionary approach to power mobility that encompasses all the exciting features of the C.',
       N'Base & Seat Frame: 5 Years; Electrical & Mechanical Components: 2 Years; Batteries & Wheels: 6 Months',
       N'{"totalLengthInclFootrestMm": 985, "totalWidthMm": 554, "totalHeightRangeMm": "745-945", "seatWidthMm": 450, "rangeKm": 18, "maxSpeedKmh": 6, "turningRadiusMm": 760, "safeWorkingLoadKg": 136, "chargeTimeHours": 5, "batteryType": "Lithium-ion (25.3V x 10.6Ah)", "wheelchairClass": "A"}',
       N'["Mobile phone app compatibility: access the Whill phone app and operate your chair from anywhere.", "Improved user interface: ensures all functional controls are in one place.", "Rear tail lights: improves safety for users in the chair when crossing roads or in high density areas.", "Rear wheel suspension: absorbs the impact when driving over bump roads or obstacles.", "Up to a 45% tighter turning radius than tiller operated mobility devices.", "Patented front omni-wheels for tight turning and superb terrain coverage.", "Equipped with two powerful motors and engineered for superb stability.", "Electromagnetic brakes provide safe stopping, even on inclines.", "An anti-sway system keeps you driving straight on side slopes.", "Quickly disassembles into three lightweight components for easy transport or storage.", "Standard inclusions: lap belt, smart key, black side covers, battery and battery charger."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS655400-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS655400-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS655400-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 550, "height": 550}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS655400-FLYER.pdf", "sizeBytes": 1887715}, {"label": "User Manual", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS655400-MANUAL.pdf", "sizeBytes": 17486868}]',
       N'https://shop.aidacare.com.au/products/whill-model-c2-power-wheelchair'
FROM dbo.Product WHERE Sku = N'PWS655400';

-- PWS654269 -- Jazzy 1450
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'With a robust and heavy-duty design, the Jazzy 1450 ensures powerful performance with front-wheel drive and efficient motors. Knobby drive tyres provide the traction you need over uneven terrain. With speeds up to 7.24 km/h, live life on your terms.',
       N'Frame: Lifetime Limited; Electronics and Drive Motors: 13 Months',
       N'{"turningRadiusCm": 67.3, "overallWidthMm": 742, "overallLengthMm": 970, "seatWidthMm": 609, "seatDepthMm": 812, "maxSpeedKmh": 7.2, "groundClearanceCm": 3.8, "batteryType": "12V, 70AH (2)", "standardBatteryCharger": "8A, off-board", "rangeKm": 25.2, "batteryWeightKg": 23.4, "safeWorkingLoadKg": 273}',
       N'["Depth adjustable, fold-flat, limited-recline high-back seat", "Flat-free drive tyres", "Universal, fixed, in-line joystick mount", "Large 43.1 x 33 cm foot platform", "273 kg weight capacity", "7.24 km/h maximum speed", "67.31 cm turning radius", "Up to 25.2 km range per charge", "Maximum performance, extremely efficient motor package"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654269-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}]',
       N'[]',
       N'https://shop.aidacare.com.au/products/jazzy-1450'
FROM dbo.Product WHERE Sku = N'PWS654269';

-- PWS654160 -- Pride Jazzy Carbon Max Power Wheelchair
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Jazzy Carbon Max, a revolutionary powerchair that combines exceptional strength with ultra-lightweight design.',
       NULL,
       N'{"variant": "Standard", "overallLengthMm": 890, "overallWidthMm": 590, "seatWidthMm": 440, "seatDepthMm": 420, "maxSpeedKmh": 6, "rangeKm": 15, "batteryType": "12Ah 24V Lithium-ion", "productWeightKg": 11.5, "safeWorkingLoadKg": 136, "heavyDutyVariant": {"overallLengthMm": 935, "overallWidthMm": 670, "seatWidthMm": 500, "seatDepthMm": 500, "rangeKm": 20, "batteryType": "20Ah 24V Lithium-ion", "productWeightKg": 18.1, "safeWorkingLoadKg": 182}}',
       N'["Frame Weight: Standard 11.5 kg, Heavy Duty 18.1 kg", "Compact turning radius for tight indoor spaces", "Regenerative braking enhances user safety on inclines and reduces wear and tear", "Easy folding mechanism for transport and storage", "Folding footplate for added packability", "Two motor rear-wheel drive with a top speed of 6 km/h"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654160-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654160-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654160-ANGLE-2.png", "alt": "angle 2", "sortOrder": 2, "width": 1000, "height": 1000}]',
       N'[]',
       N'https://shop.aidacare.com.au/products/pride-jazzy-carbon-max-power-wheelchair'
FROM dbo.Product WHERE Sku = N'PWS654160';

-- PWS654200RE -- Pride Go Chair Next Generation
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The all-new Go-Chair is re-engineered from the ground up, offering a bold new style available in a choice of contemporary colours.',
       N'2 Years limited',
       N'{"colour": "Red", "safeWorkingLoadKg": 136, "overallLengthMm": 838, "overallWidthMm": 570, "maxSpeedKmh": 5.9, "rangeKm": 14, "turningRadiusCm": 64.5}',
       N'["One hand feather-touch disassembly into 4 manageable pieces which fits in most vehicle boots", "Compact design for a tight turning radius, ideal for indoor use", "5-point swivel seat with latch release", "Increased 136kg weight capacity", "Faster speed - up to 5.9 km/h", "Larger 18 amp batteries", "Improved agility - longer wheel base; wider stance; compact turning radius 64.5 cm", "Dual swing-away, under seat storage bins", "Larger, height & width adjustable armrests", "Larger footplate", "Easy-to-remove battery pack", "52cm lap belt"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654200RE-HERO.png", "alt": "main - Red", "sortOrder": 0, "width": 700, "height": 700}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654200RE-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 550, "height": 550}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654200RE-ANGLE-2.png", "alt": "White colour", "sortOrder": 2, "width": 700, "height": 700}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654200RE-FLYER.pdf", "sizeBytes": 1648514}]',
       N'https://shop.aidacare.com.au/products/pride-go-chair-next-generation'
FROM dbo.Product WHERE Sku = N'PWS654200RE';

-- PWS654242 -- Jazzy Select 6
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Jazzy Select 6 provides maximum front stability combined with the advantages of in-line motor technology. Active-Trac Suspension and 6" front and rear castors offer superior performance indoors and outdoors.',
       N'2 Years Limited',
       N'{"safeWorkingLoadKg": 136, "totalLengthMm": 900, "totalWidthMm": 600, "maxSpeedKmh": 6}',
       N'["Features an articulating rear caster beam", "Easy access charger point - built with ease of service in mind", "Comes standard with height and depth adjustable foot platform", "Takes two 12v 35amp batteries"]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654242-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/PWS654242-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}]',
       N'[]',
       N'https://shop.aidacare.com.au/products/jazzy-select-6'
FROM dbo.Product WHERE Sku = N'PWS654242';

-- BEA007618 -- Alerta - Wireless - Deluxe Alertamat
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Plush carpet floor mat that provides a safe falls prevention solution that suits modern care environments. Distinguished look for the care environment.',
       N'1 Year',
       N'{"productCode": "BEA007618", "descriptionText": "Alerta - Wireless - Deluxe Alertamat (mat only)"}',
       N'["Distinguished look for the care environment and is an ideal solution for situations where a patient with dementia would otherwise avoid the mat.", "A robust, long life floor alarm.", "Simple plug and play ensures carer can quickly set up and operate with ease.", "Long lasting welded seams for durability.", "Large size to prevent overstepping by the user.", "Requires the Alerta Wall Point Receiver to work - sold separately."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007618-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007618-FLYER.pdf", "sizeBytes": 2283734}]',
       N'https://shop.aidacare.com.au/products/alerta-wireless-deluxe-alertamat'
FROM dbo.Product WHERE Sku = N'BEA007618';

-- BEA007570 -- Alerta - Wireless - Deluxe Alertamat System
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Wireless deluxe floor Alertamat system is a kit that includes mat and alarm monitor. Plush carpet floor mat that provides a safe falls prevention solution that suits modern care environments.',
       N'1 Year',
       N'{"productCode": "BEA007570", "descriptionText": "Alerta - Wireless - Deluxe Alertamat System (Includes mat & receiver)"}',
       N'["Distinguished look for the care environment and is an ideal solution for situations where a patient with dementia would otherwise avoid the mat.", "A robust, long life floor alarm.", "Simple plug and play ensures carer can quickly set up and operate with ease.", "Long lasting welded seams for durability.", "Large size to prevent overstepping by the user.", "Includes the Alerta Wall Point Receiver."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007570-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007570-FLYER.pdf", "sizeBytes": 2283734}]',
       N'https://shop.aidacare.com.au/products/alerta-wireless-deluxe-alertamat-system'
FROM dbo.Product WHERE Sku = N'BEA007570';

-- BEA007675 -- Alerta - Wireless - Detect Sensor
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'The Wireless Alerta Detect uses infrared technology to activate the alarm when body movement is detected within the range of the infrared beam.',
       N'1 Year',
       N'{"productCode": "BEA007675", "descriptionText": "Alerta - Wireless - Detect Sensor"}',
       N'["Most effective when mounted at the door or bedside; activating the alarm when a user leaves their safe zone and breaks the infrared beam.", "Can be connected to a nurse call system through the Alerta Wall Point Receiver for centralised activation, or used on its own for localised alerts.", "Wireless connect-and-play system. No cables, extra safe and versatile.", "Must be used with Alerta - Wireless/AlertaDetect - Alarm Monitor - sold separately."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007675-HERO.png", "alt": "main", "sortOrder": 0, "width": 500, "height": 500}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007675-FLYER.pdf", "sizeBytes": 2283734}]',
       N'https://shop.aidacare.com.au/products/alerta-wireless-detect-sensor'
FROM dbo.Product WHERE Sku = N'BEA007675';

-- BEA007623 -- Alerta - Wireless - Floor+ Alertamat
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Heavy duty floor mat provides a safe falls prevention solution with maximum longevity.',
       N'1 Year',
       N'{"productCode": "BEA007623", "descriptionText": "Alerta - Wireless - Floor+ Alertamat (mat only)"}',
       N'["Simple plug and play ensures carer can quickly set up and operate with ease.", "A robust, long life floor alarm.", "Long lasting welded seams for durability.", "Large size to prevent overstepping by the user.", "Hygienic, anti-bacterial easy-clean material.", "Available in both wired and wireless configurations.", "Requires the Alerta Wall Point Receiver to work - sold separately."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007623-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007623-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007623-FLYER.pdf", "sizeBytes": 2283734}]',
       N'https://shop.aidacare.com.au/products/alerta-wireless-floor-alertamat'
FROM dbo.Product WHERE Sku = N'BEA007623';

-- BEA007575 -- Alerta - Wireless - Floor+ Alertamat System
INSERT INTO dbo.ProductDetail (ProductId, ShortDescription, Description, Warranty, Specs, Features, Images, Files, SourceUrl)
SELECT ProductId,
       NULL,
       N'Kit that includes mat, and alarm monitor. Heavy duty floor mat provides a safe falls prevention solution with maximum longevity.',
       N'1 Year',
       N'{"productCode": "BEA007575", "descriptionText": "Alerta - Wireless - Floor+ Alertamat System (Includes mat & receiver)"}',
       N'["Simple plug and play ensures carer can quickly set up and operate with ease.", "A robust, long life floor alarm.", "Long lasting welded seams for durability.", "Large size to prevent overstepping by the user.", "Hygienic, anti-bacterial easy-clean material.", "Available in both wired and wireless configurations.", "Includes the Alerta Wall Point Receiver."]',
       N'[{"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007575-HERO.png", "alt": "main", "sortOrder": 0, "width": 1000, "height": 1000}, {"url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007575-ANGLE-1.png", "alt": "angle 1", "sortOrder": 1, "width": 1000, "height": 1000}]',
       N'[{"label": "Flyer", "url": "https://vercelfiles.blob.core.windows.net/vercelproductfiles/BEA007575-FLYER.pdf", "sizeBytes": 2283734}]',
       N'https://shop.aidacare.com.au/products/alerta-wireless-floor-alertamat-system'
FROM dbo.Product WHERE Sku = N'BEA007575';
