# Project 01: First-Time Buyer Affordability Pressure by Area

## Executive summary

This project analyses first-time buyer affordability pressure across local authority areas in England and Wales. It uses lower-quartile house price to lower-quartile workplace-based earnings ratios as the primary measure, because this better reflects the entry-level end of the housing market than a headline average or median-only view.

The SQL analysis shows that affordability pressure is highly uneven. In 2025, the highest-pressure areas were concentrated in London and the South East, while the least pressured areas were mainly in the North East, North West and Wales. Kensington and Chelsea had the highest lower-quartile affordability ratio in the latest-year output, at 20.89, compared with 3.43 in County Durham.

The analysis also shows why latest-year rankings should be considered alongside recent change. Tandridge recorded the largest five-year increase in the exported SQL output, rising from 14.07 in 2020 to 15.40 in 2025.

## Project status

Data collection, cleaning and the first SQL analysis stage are complete. The next stage is Python exploratory analysis and visualisation.

## Business background

Buying a first home is one of the clearest examples of a business-style affordability problem: the headline price matters, but it only becomes meaningful when compared with local earnings, deposit requirements and regional variation.

The purpose of this project is to identify which areas in England and Wales place the greatest affordability pressure on potential first-time buyers, and to explain the results in a way that would be useful to a housing policy team, lender, property research team or financial services stakeholder.

## Problem statement

First-time buyers do not experience the housing market evenly. A national average can hide large differences between local areas. This project compares lower-quartile house prices with lower-quartile earnings to understand where entry-level housing is most and least affordable.

## Objectives

- Build a clean, documented dataset using official UK housing affordability data.
- Use lower-quartile house price to lower-quartile earnings ratios as the main affordability measure.
- Compare affordability pressure across local authority areas.
- Identify the areas with the highest and lowest affordability pressure.
- Explore whether affordability has improved or worsened over time.
- Produce a clear written narrative, visualisations and dashboard outputs for a non-technical audience.

## Data quality summary

The SQL quality checks confirm that the cleaned dataset is suitable for analysis:

- 9,222 area-year records.
- 318 local authority records per year from 1997 to 2025.
- No duplicate local-authority-year keys.
- No non-positive lower-quartile house price, earnings or affordability ratio values.
- Latest analytical year: 2025.

Some lower-quartile earnings and affordability ratio values are missing. These rows are retained in the cleaned dataset, but null affordability ratios are excluded from ranking and comparison queries.

## Key findings from SQL analysis

### 1. The highest affordability pressure is concentrated in London and the South East

In 2025, Kensington and Chelsea had the highest lower-quartile affordability ratio in the dataset. Its lower-quartile house price was £700,000, compared with lower-quartile workplace-based annual earnings of £33,510, giving a lower-quartile affordability ratio of 20.89.

Seven of the top 10 most pressured local authorities were in London, with the remaining three in the South East.

### 2. Lower-pressure areas are concentrated in the North East, North West and Wales

County Durham had the lowest lower-quartile affordability ratio in the latest-year SQL output, at 3.43. Other lower-pressure areas included Burnley, Hyndburn, Hartlepool, Middlesbrough, Pendle and Blackpool.

This shows why a single national average is a weak guide to first-time buyer affordability pressure.

### 3. London has no lower or moderate pressure local authorities in the latest-year output

The pressure-band analysis shows that all London local authorities in the cleaned dataset were either high pressure or severe pressure in 2025:

- 22 London local authorities were in the severe-pressure band.
- 11 London local authorities were in the high-pressure band.
- none were in the moderate-pressure or lower-pressure bands.

### 4. Recent change tells a different story from latest-year ranking alone

Tandridge recorded the largest five-year increase in the exported SQL output, rising from a lower-quartile affordability ratio of 14.07 in 2020 to 15.40 in 2025. Oldham and Sevenoaks also recorded increases of 1.26 ratio points.

This matters because some areas with more moderate current ratios may still be moving quickly in the wrong direction.

## Success criteria

The project will be considered successful when it contains:

- A documented raw data source.
- A cleaned dataset suitable for SQL, Python, Excel and Power BI analysis.
- A data dictionary and cleaning log.
- SQL queries with clear annotations and exported outputs.
- A Python notebook for data collection, cleaning and exploratory analysis.
- An Excel workbook for review-style analysis or summary checks.
- A Power BI dashboard or dashboard mock-up.
- A professional README explaining the business question, findings, recommendations, limitations and technical review points.

## Core tools

- SQL
- Python
- Excel
- Power BI
- GitHub
- GitHub Pages

## Primary analytical angle

This project focuses on first-time buyer affordability pressure by area. For that reason, the lower-quartile affordability ratio is more relevant than the median ratio, because lower-quartile prices better approximate the entry-level end of the housing market.

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

## Detailed outputs

- `notebooks/01_data_collection_and_profiling.ipynb` records the source collection and first profiling stage.
- `notebooks/02_data_cleaning.ipynb` creates the cleaned area-year dataset.
- `sql/01_data_quality_checks.sql` contains SQL quality checks.
- `sql/02_affordability_pressure_analysis.sql` contains SQL ranking and comparison analysis.
- `sql/outputs/` stores exported SQL result sets.
- `reports/sql_findings.md` summarises the first SQL findings.

## Next analytical step

The next stage is Python exploratory analysis. It will create charts and summary tables showing the distribution of affordability pressure, regional variation and five-year change.
