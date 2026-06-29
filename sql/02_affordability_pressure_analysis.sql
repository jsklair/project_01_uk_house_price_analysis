-- Project 01: First-Time Buyer Affordability Pressure by Area
-- Script 02: Affordability pressure analysis
-- Purpose: rank areas by entry-level housing affordability pressure.

-- Rank local areas by lower-quartile affordability pressure in the latest year.
WITH latest_year AS (
    SELECT MAX(year) AS year
    FROM affordability_area_year
), ranked_areas AS (
    SELECT
        a.area_code,
        a.area_name,
        a.year,
        a.lower_quartile_house_price,
        a.lower_quartile_annual_earnings,
        a.lower_quartile_affordability_ratio,
        RANK() OVER (
            ORDER BY a.lower_quartile_affordability_ratio DESC
        ) AS affordability_pressure_rank
    FROM affordability_area_year AS a
    INNER JOIN latest_year AS ly
        ON a.year = ly.year
)
SELECT
    area_code,
    area_name,
    year,
    lower_quartile_house_price,
    lower_quartile_annual_earnings,
    lower_quartile_affordability_ratio,
    affordability_pressure_rank
FROM ranked_areas
ORDER BY affordability_pressure_rank;

-- Create practical pressure bands for stakeholder communication.
SELECT
    area_code,
    area_name,
    year,
    lower_quartile_affordability_ratio,
    CASE
        WHEN lower_quartile_affordability_ratio < 5 THEN 'Lower pressure'
        WHEN lower_quartile_affordability_ratio < 8 THEN 'Moderate pressure'
        WHEN lower_quartile_affordability_ratio < 12 THEN 'High pressure'
        ELSE 'Severe pressure'
    END AS pressure_band
FROM affordability_area_year
WHERE year = (SELECT MAX(year) FROM affordability_area_year)
ORDER BY lower_quartile_affordability_ratio DESC;
