# SQL outputs

This folder stores exported results from the SQL analysis stage.

The SQL scripts are the main evidence of the analytical logic. The exported CSV files are saved here so the final README and GitHub Pages summary can cite the exact results used for the written insights.

## Recommended folder structure

```text
sql/outputs/
├── data_quality/
│   ├── 01_row_counts_by_year.csv
│   ├── 02_duplicate_local_authority_year_keys.csv
│   ├── 03_missing_metric_counts.csv
│   ├── 04_non_positive_value_checks.csv
│   └── 05_latest_year.csv
│
└── analysis/
    ├── 01_latest_most_pressured_areas.csv
    ├── 02_latest_least_pressured_areas.csv
    ├── 03_pressure_bands_by_region.csv
    └── 04_five_year_change_most_increased.csv
```

## Output principles

- Save each query result as a separate CSV.
- Keep empty data quality outputs if the empty result is analytically useful, for example no duplicate keys or no non-positive values.
- Use clear numbering so each output can be matched back to the SQL script.
- Do not edit exported results manually; if the logic changes, rerun the SQL query and replace the CSV.
