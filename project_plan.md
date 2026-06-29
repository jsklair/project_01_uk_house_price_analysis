# Project plan: First-Time Buyer Affordability Pressure by Area

## 1. Business question

Which areas in England and Wales place the greatest affordability pressure on potential first-time buyers, and how has that pressure changed over time?

## 2. Intended audience

The analysis is written for a non-technical stakeholder, such as:

- a housing policy analyst;
- a mortgage strategy team;
- a property research team;
- a financial services product manager;
- a local authority insight team.

## 3. Analytical approach

The main measure is the lower-quartile house price to lower-quartile workplace-based earnings ratio. This is a practical proxy for entry-level affordability because it compares lower-priced homes with lower earnings.

The analysis will:

1. Load the source affordability dataset.
2. Profile the data for missing values, duplicates and unexpected values.
3. Clean and reshape the data into an analysis-ready format.
4. Rank areas by affordability pressure.
5. Compare current affordability with previous years.
6. Group areas into pressure bands.
7. Create visual outputs for the README and dashboard.
8. Explain findings, limitations and recommendations.

## 4. Proposed measures

- Lower-quartile affordability ratio.
- Median affordability ratio.
- Change in lower-quartile affordability ratio over time.
- Area rank by affordability pressure.
- Difference from England and Wales benchmark.
- Pressure band, such as low, moderate, high and severe.

## 5. Initial hypotheses

These are not conclusions. They are starting points to test.

- London and parts of the South East are likely to show the greatest affordability pressure.
- Some areas may have improved recently because earnings have risen faster than entry-level house prices.
- National averages are likely to hide substantial local variation.
- Lower-quartile affordability may tell a different story from median affordability in areas with unusual housing stock or earnings patterns.

## 6. Planned outputs

- Cleaned CSV dataset.
- Data dictionary.
- SQL analysis scripts.
- Python cleaning and EDA notebook.
- Excel workbook for summary checks or pivot analysis.
- Power BI dashboard.
- README case study.
- GitHub Pages project summary.
- Technical review notes.

## 7. Risks and limitations to manage

- The analysis uses affordability ratios as a proxy, not a full mortgage affordability model.
- Local earnings may not reflect buyer earnings if people commute between areas.
- Lower-quartile prices may include different property types in different areas.
- Deposit requirements, interest rates, credit criteria and household composition are not captured directly.
- England and Wales affordability data may not be directly comparable with Scotland and Northern Ireland.

## 8. First build milestone

The first build milestone creates a clean project scaffold, sources the official datasets, documents the data and completes the first data quality review.
