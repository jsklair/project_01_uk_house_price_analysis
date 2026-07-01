# SQL analysis

This folder contains the SQL scripts used to validate and analyse the cleaned affordability dataset.

## Scripts

1. `01_data_quality_checks.sql`  
   Checks row counts, duplicate local-authority-year keys, missing values and invalid numeric values.

2. `02_affordability_pressure_analysis.sql`  
   Produces latest-year rankings, regional pressure bands and five-year change outputs.

## Outputs

Exported SQL outputs are stored in:

```text
sql/outputs/data_quality/
sql/outputs/analysis/
```

These outputs support the written findings in `reports/sql_findings.md` and provide an auditable link between the cleaned data and the project conclusions.

## SQL style

- Use uppercase SQL keywords.
- Use clear aliases.
- Prefer common table expressions for multi-step logic.
- Comment the business purpose of each query.
- Keep queries readable and auditable.
