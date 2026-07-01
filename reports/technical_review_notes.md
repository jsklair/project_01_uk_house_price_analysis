# Technical review notes

This file records the technical points that support discussion of the project design, methodology and limitations.

## 1. Lower-quartile affordability measure

Lower-quartile affordability is the primary measure because the project focuses on the entry-level housing market. Median affordability remains useful as a comparison, but it can overstate the price point faced by buyers looking at lower-cost homes.

## 2. Data quality checks

The data quality review covers duplicate records, missing values, suspicious values, row counts and reconciliation between raw and cleaned outputs.

The SQL quality checks found no duplicate local-authority-year keys and no non-positive values in the main lower-quartile price, earnings or affordability ratio fields. Missing lower-quartile earnings and affordability ratio values are retained in the cleaned dataset but excluded from ranking outputs where a valid ratio is required.

## 3. Analytical limitations

The affordability ratio is a useful proxy, but it is not a full mortgage affordability assessment. It does not directly include interest rates, deposit size, household composition, credit criteria or parental support.

Workplace-based earnings may also differ from the earnings of people who live in the same area, especially where commuting patterns are strong.

## 4. Potential improvements

Further development could add mortgage repayment modelling, deposit saving assumptions, household income, property type mix and geospatial analysis.
