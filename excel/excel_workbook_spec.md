# Excel workbook specification

This document records the design of the Excel review workbook created for Project 01.

## Workbook

```text
excel/first_time_buyer_affordability_review.xlsx
```

## Workbook purpose

The Excel workbook demonstrates spreadsheet analysis skills without duplicating the full Python or Power BI workflow. Its role is to provide a transparent review pack that a stakeholder could open, filter and audit.

The workbook supports three practical questions:

1. Which areas have the highest and lowest first-time buyer affordability pressure?
2. How does affordability pressure vary by region?
3. Which areas have worsened most over the latest five-year comparison period?

## Workbook structure

| Tab | Purpose | Source |
|---|---|---|
| `README` | Explain workbook purpose, source and refresh date | Manual summary |
| `Data` | Hold the cleaned area-year dataset as an Excel table | `data/cleaned/affordability_area_year_cleaned.csv` |
| `Latest Year Summary` | Show latest-year top and bottom areas and key metrics | Python and SQL outputs |
| `Regional Summary` | Compare regional medians, averages and maximum ratios | `reports/python_regional_latest_summary.csv` |
| `Five Year Change` | Show areas with the largest five-year increases | `reports/python_top_20_five_year_increases.csv` |
| `Charts` | Provide selected visual summaries | Python chart outputs or Excel charts |
| `Checks` | Show row counts, missing values and duplicate checks | SQL data quality outputs |

## Excel skills demonstrated

- Structured tables.
- Summary tables.
- Pivot-style aggregation.
- Sorting and filtering.
- Clear number formatting.
- Conditional formatting for pressure bands.
- Chart presentation.
- Data quality checks and review notes.

## Measures used

| Measure | Definition |
|---|---|
| Lower-quartile house price | Entry-level house price measure from ONS workbook |
| Lower-quartile annual earnings | Workplace-based lower-quartile earnings |
| Lower-quartile affordability ratio | Lower-quartile house price divided by lower-quartile annual earnings |
| Median affordability ratio | Median house price divided by median earnings |
| Five-year change | Latest-year lower-quartile ratio minus comparison-year ratio |

## Design principles

- Keep the workbook readable rather than over-designed.
- Use Excel as a review and communication layer, not as the main data-cleaning engine.
- Keep raw and cleaned data separate.
- Make the source of every summary table clear.
- Keep workbook findings traceable to data or summary outputs.

## Relationship to other outputs

The workbook complements the SQL, Python and Power BI outputs. It is included to show spreadsheet review and stakeholder-friendly analysis, while the cleaned dataset, notebooks and SQL scripts provide the main reproducible workflow.
