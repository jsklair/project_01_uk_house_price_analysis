-- Project 01: First-Time Buyer Affordability Pressure by Area
-- Script 02: Affordability pressure analysis
-- Purpose: rank local authorities by entry-level housing affordability pressure.

-- Rank local authorities by lower-quartile affordability pressure in the latest year.
WITH latest_year AS (
    SELECT MAX(year) AS year
    FROM affordability_area_year
), ranked_areas AS (
    SELECT
        a.country_region_name,
        a.local_authority_code,
        a.local_authority_name,
        a.year,
        a.lower_quartile_house_price,
        a.lower_quartile_annual_earnings,
        a.lower_quartile_affordability_ratio,
        a.median_affordability_ratio,
        RANK() OVER (
            ORDER BY a.lower_quartile_affordability_ratio DESC
        ) AS affordability_pressure_rank
    FROM affordability_area_year AS a
    INNER JOIN latest_year AS ly
        ON a.year = ly.year
    WHERE a.lower_quartile_affordability_ratio IS NOT NULL
)
SELECT
    country_region_name,
    local_authority_code,
    local_authority_name,
    year,
    lower_quartile_house_price,
    lower_quartile_annual_earnings,
    lower_quartile_affordability_ratio,
    median_affordability_ratio,
    affordability_pressure_rank
FROM ranked_areas
ORDER BY affordability_pressure_rank
LIMIT 20;

-- Identify the least pressured local authorities in the latest year.
WITH latest_year AS (
    SELECT MAX(year) AS year
    FROM affordability_area_year
)
SELECT
    a.country_region_name,
    a.local_authority_code,
    a.local_authority_name,
    a.year,
    a.lower_quartile_house_price,
    a.lower_quartile_annual_earnings,
    a.lower_quartile_affordability_ratio,
    a.median_affordability_ratio
FROM affordability_area_year AS a
INNER JOIN latest_year AS ly
    ON a.year = ly.year
WHERE a.lower_quartile_affordability_ratio IS NOT NULL
ORDER BY a.lower_quartile_affordability_ratio ASC
LIMIT 20;

-- Create practical pressure bands for stakeholder communication.
WITH latest_year AS (
    SELECT MAX(year) AS year
    FROM affordability_area_year
)
SELECT
    a.country_region_name,
    CASE
        WHEN a.lower_quartile_affordability_ratio < 5 THEN 'Lower pressure'
        WHEN a.lower_quartile_affordability_ratio < 8 THEN 'Moderate pressure'
        WHEN a.lower_quartile_affordability_ratio < 12 THEN 'High pressure'
        ELSE 'Severe pressure'
    END AS pressure_band,
    COUNT(*) AS local_authority_count,
    ROUND(AVG(a.lower_quartile_affordability_ratio), 2) AS average_lq_affordability_ratio
FROM affordability_area_year AS a
INNER JOIN latest_year AS ly
    ON a.year = ly.year
WHERE a.lower_quartile_affordability_ratio IS NOT NULL
GROUP BY
    a.country_region_name,
    pressure_band
ORDER BY
    a.country_region_name,
    average_lq_affordability_ratio DESC;

-- Compare the latest year with five years earlier to show where pressure has changed most.
WITH years AS (
    SELECT
        MAX(year) AS latest_year,
        MAX(year) - 5 AS comparison_year
    FROM affordability_area_year
), latest AS (
    SELECT
        local_authority_code,
        local_authority_name,
        country_region_name,
        lower_quartile_affordability_ratio AS latest_lq_ratio
    FROM affordability_area_year
    WHERE year = (SELECT latest_year FROM years)
), comparison AS (
    SELECT
        local_authority_code,
        lower_quartile_affordability_ratio AS comparison_lq_ratio
    FROM affordability_area_year
    WHERE year = (SELECT comparison_year FROM years)
)
SELECT
    latest.country_region_name,
    latest.local_authority_code,
    latest.local_authority_name,
    ROUND(comparison.comparison_lq_ratio, 2) AS comparison_lq_ratio,
    ROUND(latest.latest_lq_ratio, 2) AS latest_lq_ratio,
    ROUND(latest.latest_lq_ratio - comparison.comparison_lq_ratio, 2) AS five_year_change
FROM latest
INNER JOIN comparison
    ON latest.local_authority_code = comparison.local_authority_code
WHERE latest.latest_lq_ratio IS NOT NULL
  AND comparison.comparison_lq_ratio IS NOT NULL
ORDER BY five_year_change DESC
LIMIT 20;
