# Cleaned data

This folder contains analysis-ready datasets and cleaning review outputs created from the ONS affordability workbook.

## Files

```text
affordability_area_year_cleaned.csv
cleaned_missing_profile.csv
cleaning_quality_summary.csv
initial_column_profile.csv
```

## Main dataset

`affordability_area_year_cleaned.csv` is the main cleaned area-year dataset used for SQL, Python, Excel and Power BI analysis.

The dataset keeps one row per local authority and year, with cleaned fields for area identifiers, country or region, lower-quartile house prices, lower-quartile earnings, lower-quartile affordability ratios and median affordability ratios.

## Quality review outputs

The supporting CSV files record profiling, missing value checks and cleaning quality checks. They provide an audit trail between the raw workbook and the final analysis-ready dataset.

The raw ONS workbook is stored locally under `data/raw/` during reproduction, but it is not committed to the repository.
