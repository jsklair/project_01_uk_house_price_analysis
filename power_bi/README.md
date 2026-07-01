# Power BI dashboard

This folder contains the Power BI dashboard file, screenshot evidence and notes about the dashboard design.

## Dashboard file

```text
power_bi/first_time_buyer_affordability_dashboard.pbix
```

## Dashboard purpose

The Power BI dashboard provides an interactive stakeholder view of first-time buyer affordability pressure across local authority areas in England and Wales.

The Excel workbook is the review and audit layer. Power BI is the exploration and presentation layer.

## Source file

The dashboard uses the cleaned dataset as its main source:

```text
data/cleaned/affordability_area_year_cleaned.csv
```

This keeps the dashboard connected to the analysis-ready data rather than the raw ONS workbook.

## Screenshot evidence

Screenshots are stored in:

```text
power_bi/screenshots/
```

Files:

- `01_executive_summary.png`
- `02_regional_comparison.png`
- `03_local_authority_ranking.png`
- `04_change_over_time.png`
- `05_methodology_and_caveats.png`

These screenshots make the dashboard visible on GitHub for reviewers who cannot open the `.pbix` file.

## Dashboard pages

### Page 1: Executive Summary

Purpose: give a senior stakeholder the main message immediately.

Built content:

- Latest analytical year.
- Median lower-quartile affordability ratio.
- Local authority count.
- Bar chart showing median lower-quartile affordability ratio by region.
- Interpretation text box.

The latest year is shown as a formatted text box rather than a card, because Power BI displayed the card value as `2K` rather than `2025`.

### Page 2: Regional Comparison

Purpose: show how affordability pressure varies across countries and regions.

Built content:

- Year slicer.
- Bar chart showing median lower-quartile affordability ratio by country or region.
- Bar chart showing local authority count by country or region.
- Interpretation text box.

The local authority count chart provides context for the number of areas behind each regional comparison.

### Page 3: Local Authority Ranking

Purpose: allow users to identify and compare the most pressured areas.

Built content:

- Year slicer.
- Country or region slicer.
- Top 15 highest affordability pressure areas bar chart.
- Local authority detail table.
- Interpretation text box.

Totals are switched off in the detail table because totals are not meaningful for individual area ratios.

### Page 4: Change Over Time

Purpose: show whether affordability pressure is a long-term pattern or a recent change.

Built content:

- Country or region slicer.
- Regional median affordability ratio trend chart.
- Kensington and Chelsea affordability ratio trend chart.
- Interpretation text box.

The page separates regional trend analysis from a local authority case study. The country or region slicer affects the regional chart only, while the Kensington and Chelsea chart remains visible as a fixed high-pressure case study.

### Page 5: Methodology and Caveats

Purpose: explain the source, measure, scope and limitations.

Built content:

- Methodology and Caveats page title.
- Single methodology text box with the following sections:
  - Data source.
  - Main calculation.
  - Analytical scope.
  - Caveats.
  - How to use the dashboard.

This page keeps the dashboard credible by showing the assumptions and limitations behind the analysis.

## Measures used

### Latest year

```DAX
Latest Year =
MAX('affordability_area_year_cleaned'[year])
```

### Median lower-quartile affordability ratio

```DAX
Median LQ Affordability Ratio =
MEDIAN('affordability_area_year_cleaned'[lower_quartile_affordability_ratio])
```

### Local authority count

```DAX
Local Authority Count =
DISTINCTCOUNT('affordability_area_year_cleaned'[local_authority_code])
```

## Design standards

- Page titles: DIN, size 18, bold.
- Visual titles: DIN, size 14, bold.
- Slicer headers: off.
- Slicer titles: DIN, size 14, bold.
- Slicer values: DIN, size 10.
- Body text: DIN, size 10.
- Visual field names are renamed for readability where needed.
- Similar visuals are copied and pasted before changing fields, so formatting stays consistent.
- Totals are switched off where they do not make analytical sense.

## Design principles

- Keep the dashboard simple and readable.
- Use slicers where they support clear exploration.
- Avoid too many visuals on one page.
- Keep caveats visible, especially around missing data and workplace-based earnings.
- Do not use Power BI to repeat every table from Excel.

## Portfolio value

The Power BI dashboard demonstrates that the analysis can be translated into an interactive stakeholder-facing output. It complements the SQL, Python and Excel work by showing the main findings in a format suitable for exploration and presentation.