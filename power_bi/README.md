# Power BI dashboard

This folder will contain the Power BI dashboard file, exported screenshots and notes about the dashboard design.

## Dashboard purpose

The Power BI dashboard should provide an interactive stakeholder view of first-time buyer affordability pressure across local authority areas in England and Wales.

The Excel workbook is the review and audit layer. Power BI should be the exploration and presentation layer.

## Recommended file name

`power_bi/first_time_buyer_affordability_dashboard.pbix`

## Recommended source file

Use the cleaned dataset as the main Power BI source:

```text
data/cleaned/affordability_area_year_cleaned.csv
```

This keeps the dashboard connected to the analysis-ready data rather than the raw ONS workbook.

## Recommended dashboard pages

### Page 1: Executive Summary

Purpose: give a senior stakeholder the main message immediately.

Recommended visuals:

- Card: latest analytical year.
- Card: median lower-quartile affordability ratio.
- Card: highest-pressure local authority.
- Card: lowest-pressure local authority.
- Bar chart: median affordability ratio by region.
- Short text box: key interpretation.

### Page 2: Regional Comparison

Purpose: show how affordability pressure varies across regions.

Recommended visuals:

- Bar chart: median lower-quartile affordability ratio by region.
- Bar chart or table: count of local authorities by pressure band and region.
- Slicer: year.
- Slicer: country or region.

### Page 3: Local Authority Ranking

Purpose: allow users to identify the most and least pressured areas.

Recommended visuals:

- Table: local authority, region, lower-quartile house price, lower-quartile earnings and affordability ratio.
- Bar chart: top 15 most pressured areas.
- Slicer: year.
- Slicer: region.

### Page 4: Change Over Time

Purpose: show whether affordability has improved or worsened.

Recommended visuals:

- Line chart: affordability ratio over time for selected local authorities.
- Bar chart: largest five-year increases.
- Slicer: local authority.
- Slicer: region.

### Page 5: Methodology and Limitations

Purpose: explain the measure and avoid overclaiming.

Recommended content:

- Data source summary.
- Main measure definition.
- Missing data note.
- Limitation that workplace-based earnings may not reflect resident earnings.
- Limitation that the ratio is not a full mortgage affordability model.

## Recommended calculated columns

Use calculated columns only where they make the dashboard easier to use.

### Pressure band

```DAX
Pressure Band =
SWITCH(
    TRUE(),
    'affordability_area_year_cleaned'[lower_quartile_affordability_ratio] < 5, "Lower pressure",
    'affordability_area_year_cleaned'[lower_quartile_affordability_ratio] < 8, "Moderate pressure",
    'affordability_area_year_cleaned'[lower_quartile_affordability_ratio] < 12, "High pressure",
    "Severe pressure"
)
```

## Recommended measures

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

### Average lower-quartile affordability ratio

```DAX
Average LQ Affordability Ratio =
AVERAGE('affordability_area_year_cleaned'[lower_quartile_affordability_ratio])
```

### Local authority count

```DAX
Local Authority Count =
DISTINCTCOUNT('affordability_area_year_cleaned'[local_authority_code])
```

## Design principles

- Keep the dashboard simple and readable.
- Use slicers to support exploration by year, region and local authority.
- Avoid too many visuals on one page.
- Use red or darker emphasis for higher affordability pressure, not green.
- Keep caveats visible, especially around missing data and workplace-based earnings.
- Do not use Power BI to repeat every table from Excel.

## Portfolio recommendation

For this portfolio, the strongest approach is to build a clean four-page dashboard plus a methodology page. This is enough to show Power BI skills without making the project feel overbuilt.
