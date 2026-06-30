# First-Time Buyer Affordability Pressure by Area

## Executive summary

This project analyses first-time buyer affordability across local authority areas in England and Wales. It uses lower-quartile house price to lower-quartile workplace-based earnings ratios as the primary measure, because this better reflects the entry-level end of the housing market than a headline average or median-only view.

In the 2025 SQL output, the highest affordability pressure is concentrated in London and the South East. Kensington and Chelsea has the highest lower-quartile affordability ratio at 20.89, while County Durham has the lowest ratio in the exported least-pressured output at 3.43.

## Project summary

The project uses official housing affordability data to compare entry-level house prices with local earnings. The work is structured as a business-facing analysis rather than a purely descriptive data exercise.

## Why this matters

A national house price average is not enough to understand affordability. Buyers face local prices, local earnings and local constraints. This project focuses on area-level variation so that affordability can be compared more realistically.

## SQL findings so far

- The cleaned dataset contains 9,222 area-year records across 318 local authorities per year from 1997 to 2025.
- No duplicate local-authority-year keys were found.
- The latest analytical year is 2025.
- Seven of the top 10 most pressured local authorities in 2025 are in London.
- All London local authorities in the cleaned dataset are either high pressure or severe pressure in the latest-year pressure-band output.
- The least pressured latest-year areas are mainly in the North East, North West and Wales.
- Tandridge recorded the largest five-year increase in the exported SQL output, rising from 14.07 in 2020 to 15.40 in 2025.

## Outputs completed

- Source collection and profiling notebook.
- Cleaning notebook.
- Cleaned area-year dataset.
- Data dictionary.
- SQL quality checks.
- SQL affordability pressure analysis.
- Exported SQL outputs.
- SQL findings report.

## Planned next outputs

- Python exploratory analysis.
- Visualisations.
- Excel summary workbook.
- Power BI dashboard.
- Final business-facing recommendations.

## Status

Data collection, cleaning and the first SQL analysis stage are complete. The next stage is Python exploratory analysis and visualisation.
