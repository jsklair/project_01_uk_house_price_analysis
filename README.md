# Project 01: First-Time Buyer Affordability Pressure by Area

## Executive summary

This project analyses first-time buyer affordability pressure across local authority areas in England and Wales. It uses lower-quartile house price to lower-quartile workplace-based earnings ratios as the primary measure, because this better reflects the entry-level end of the housing market than a headline average or median-only view.

The analysis shows that affordability pressure is highly uneven. In 2025, the highest-pressure areas were concentrated in London and the South East, while the least pressured areas were mainly in the North East, North West and Wales. Kensington and Chelsea had the highest lower-quartile affordability ratio in the latest-year output, at 20.89, compared with 3.43 in County Durham.

The Python exploratory analysis shows that the 2025 median lower-quartile affordability ratio across valid local authorities was 8.11. London had the highest regional median at 12.74, followed by the South East at 10.24 and the East of England at 9.92. The North East had the lowest regional median at 4.66.

The analysis also shows why latest-year rankings should be considered alongside recent change. Tandridge recorded the largest five-year increase in the exported SQL and Python outputs, rising from 14.07 in 2020 to 15.40 in 2025.

## Project status

The main project build is complete. Data collection, cleaning, SQL analysis, Python exploratory analysis, Excel review, Power BI dashboard development, dashboard screenshot evidence, final recommendations and project review questions are included.

The remaining step is final PR review and merge.

## Business background

Buying a first home is one of the clearest examples of a business-style affordability problem: the headline price matters, but it only becomes meaningful when compared with local earnings, deposit requirements and regional variation.

The purpose of this project is to identify which areas in England and Wales place the greatest affordability pressure on potential first-time buyers, and to explain the results in a way that would be useful to a housing policy team, lender, property research team or financial services stakeholder.

## Problem statement

First-time buyers do not experience the housing market evenly. A national average can hide large differences between local areas. This project compares lower-quartile house prices with lower-quartile earnings to understand where entry-level housing is most and least affordable.

## Data quality summary

The SQL quality checks confirm that the cleaned dataset is suitable for analysis:

- 9,222 area-year records.
- 318 local authority records per year from 1997 to 2025.
- No duplicate local-authority-year keys.
- No non-positive lower-quartile house price, earnings or affordability ratio values.
- Latest analytical year: 2025.

Some lower-quartile earnings and affordability ratio values are missing. These rows are retained in the cleaned dataset, but null affordability ratios are excluded from ranking and comparison queries.

## Key findings

### 1. The highest affordability pressure is concentrated in London and the South East

In 2025, Kensington and Chelsea had the highest lower-quartile affordability ratio in the dataset. Its lower-quartile house price was £700,000, compared with lower-quartile workplace-based annual earnings of £33,510, giving a lower-quartile affordability ratio of 20.89.

Seven of the top 10 most pressured local authorities were in London, with the remaining three in the South East.

### 2. Lower-pressure areas are concentrated in the North East, North West and Wales

County Durham had the lowest lower-quartile affordability ratio in the latest-year SQL output, at 3.43. Other lower-pressure areas included Burnley, Hyndburn, Hartlepool, Middlesbrough, Pendle and Blackpool.

This shows why a single national average is a weak guide to first-time buyer affordability pressure.

### 3. Regional medians show a clear north-south divide

The Python exploratory analysis shows that London had the highest regional median lower-quartile affordability ratio in 2025, at 12.74. The South East followed at 10.24 and the East of England at 9.92.

The North East had the lowest regional median at 4.66. This is less than half the London median.

### 4. Recent change tells a different story from latest-year ranking alone

Tandridge recorded the largest five-year increase in the exported SQL and Python outputs, rising from a lower-quartile affordability ratio of 14.07 in 2020 to 15.40 in 2025. Oldham and Sevenoaks also recorded increases of 1.26 ratio points.

This matters because some areas with more moderate current ratios may still be moving quickly in the wrong direction.

## Recommendations

The final recommendations report translates the analysis into practical stakeholder actions:

- Do not rely on national affordability averages.
- Treat London and the South East as distinct high-pressure markets.
- Use lower-pressure areas as comparison groups, not as proof that affordability is easy.
- Monitor areas where affordability pressure has worsened over time.
- Keep the workflow transparent and repeatable for future releases.

See `reports/final_recommendations.md` for the full report.

## Dashboard summary

The Power BI dashboard provides an interactive view of the analysis. It contains five pages:

1. Executive Summary
2. Regional Comparison
3. Local Authority Ranking
4. Change Over Time
5. Methodology and Caveats

The dashboard uses the cleaned area-year dataset as its source. Screenshots are stored in `power_bi/screenshots/` so the report can be reviewed without opening the `.pbix` file.

## Tools demonstrated

- SQL
- Python
- Excel
- Power BI
- Git and GitHub
- GitHub Pages

## Repository structure

```text
.
├── data/
│   ├── raw/
│   ├── cleaned/
│   └── dictionary/
├── docs/
├── excel/
├── notebooks/
├── power_bi/
├── python/
├── reports/
├── sql/
└── visuals/
```

## Main outputs

- `notebooks/01_data_collection_and_profiling.ipynb` records the source collection and first profiling stage.
- `notebooks/02_data_cleaning.ipynb` creates the cleaned area-year dataset.
- `notebooks/03_python_exploratory_analysis.ipynb` creates exploratory summaries and visual outputs.
- `sql/01_data_quality_checks.sql` contains SQL quality checks.
- `sql/02_affordability_pressure_analysis.sql` contains SQL ranking and comparison analysis.
- `sql/outputs/` stores exported SQL result sets.
- `reports/sql_findings.md` summarises the SQL findings.
- `reports/python_exploratory_findings.md` summarises the Python exploratory findings.
- `reports/final_recommendations.md` contains the final business recommendations.
- `reports/project_review_questions.md` contains project review questions and model answers.
- `excel/first_time_buyer_affordability_review.xlsx` contains the Excel review workbook.
- `power_bi/first_time_buyer_affordability_dashboard.pbix` contains the Power BI dashboard.
- `power_bi/screenshots/` contains dashboard screenshot evidence.
- `docs/index.md` contains the GitHub Pages project summary.

## Suggested next extension

A useful next step would add mortgage repayment assumptions, deposit requirements and household income scenarios. That would turn the current area-level affordability pressure analysis into a more detailed first-time buyer affordability model.