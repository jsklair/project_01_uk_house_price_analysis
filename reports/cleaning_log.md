# Cleaning log

This log records the decisions made while preparing the data.

| Date | Step | Issue found | Action taken | Reason | Impact |
|---|---|---|---|---|---|
| 2026-06-29 | Source collection | Raw ONS workbook was not initially present locally | Added automated workbook download to notebook 01 | The data collection step should be reproducible from the source URL | Raw workbook can be recreated locally without manual download |
| 2026-06-29 | Initial profiling | Generic header detection selected a metadata-style row rather than the intended analytical table | Notebook 02 uses explicit sheet mapping for the selected ONS tables | The workbook contains multiple tables and official notes, so explicit sheet selection is more reliable than generic detection | Cleaning focuses on local-authority lower-quartile measures relevant to first-time buyer affordability |

## Cleaning principles

- Raw files remain unchanged.
- Every transformation remains reproducible.
- Assumptions are recorded clearly.
- Genuine data errors are separated from valid but unusual values.
- Outliers are reviewed before any exclusion decision is made.
