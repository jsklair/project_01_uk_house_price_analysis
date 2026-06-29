-- Project 01: First-Time Buyer Affordability Pressure by Area
-- Script 01: Data quality checks
-- Purpose: identify obvious data quality issues before analysis.

-- Check row counts by year.
SELECT
    year,
    COUNT(*) AS row_count
FROM affordability_area_year
GROUP BY year
ORDER BY year;

-- Check for duplicate local-authority-year records.
SELECT
    local_authority_code,
    local_authority_name,
    year,
    COUNT(*) AS record_count
FROM affordability_area_year
GROUP BY
    local_authority_code,
    local_authority_name,
    year
HAVING COUNT(*) > 1
ORDER BY record_count DESC;

-- Check for missing values in the main affordability metrics.
SELECT
    COUNT(*) AS total_rows,
    SUM(CASE WHEN lower_quartile_affordability_ratio IS NULL THEN 1 ELSE 0 END) AS missing_lq_ratio,
    SUM(CASE WHEN lower_quartile_house_price IS NULL THEN 1 ELSE 0 END) AS missing_lq_house_price,
    SUM(CASE WHEN lower_quartile_annual_earnings IS NULL THEN 1 ELSE 0 END) AS missing_lq_earnings,
    SUM(CASE WHEN median_affordability_ratio IS NULL THEN 1 ELSE 0 END) AS missing_median_ratio
FROM affordability_area_year;

-- Check for values that would be analytically suspicious.
SELECT
    local_authority_code,
    local_authority_name,
    year,
    lower_quartile_house_price,
    lower_quartile_annual_earnings,
    lower_quartile_affordability_ratio
FROM affordability_area_year
WHERE lower_quartile_house_price <= 0
   OR lower_quartile_annual_earnings <= 0
   OR lower_quartile_affordability_ratio <= 0
ORDER BY year DESC, local_authority_name;

-- Confirm the latest year available in the cleaned dataset.
SELECT
    MAX(year) AS latest_year
FROM affordability_area_year;
