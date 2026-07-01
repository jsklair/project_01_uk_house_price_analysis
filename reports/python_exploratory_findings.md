# Python exploratory findings

This report summarises the exploratory analysis produced from `notebooks/03_python_exploratory_analysis.ipynb`. It builds on the SQL findings by reviewing the latest-year distribution, regional medians and five-year changes in affordability pressure.

## Latest-year distribution

The 2025 analysis contains 317 local authorities with a valid lower-quartile affordability ratio. The median latest-year ratio is 8.11, with an average of 8.45.

The distribution is wide:

| Statistic | Lower-quartile affordability ratio |
|---|---:|
| Minimum | 3.43 |
| 10th percentile | 5.13 |
| 25th percentile | 6.19 |
| Median | 8.11 |
| 75th percentile | 10.30 |
| 90th percentile | 12.48 |
| Maximum | 20.89 |

This spread reinforces the central project point: first-time buyer affordability pressure varies substantially by place. A single national average would hide the difference between areas where lower-quartile house prices are around 3.5 times lower-quartile earnings and areas where they exceed 20 times earnings.

## Regional pattern

The regional summary shows a clear north-south affordability divide in the 2025 data.

| Region | Local authority count | Median lower-quartile ratio | Average lower-quartile ratio | Maximum lower-quartile ratio |
|---|---:|---:|---:|---:|
| London | 33 | 12.74 | 12.97 | 20.89 |
| South East | 64 | 10.24 | 10.28 | 15.40 |
| East of England | 45 | 9.92 | 9.82 | 13.93 |
| South West | 26 | 8.48 | 8.48 | 11.48 |
| East Midlands | 35 | 7.03 | 7.10 | 10.06 |
| West Midlands | 30 | 7.02 | 7.31 | 9.83 |
| North West | 35 | 5.80 | 5.69 | 9.95 |
| Wales | 22 | 5.72 | 5.77 | 8.18 |
| Yorkshire and The Humber | 15 | 5.41 | 5.54 | 8.21 |
| North East | 12 | 4.66 | 4.52 | 5.39 |

London has the highest regional median, followed by the South East and East of England. The North East has the lowest regional median.

The difference between London and the North East is particularly large: London’s median lower-quartile affordability ratio is 12.74, compared with 4.66 in the North East.

## Highest-pressure areas

The exploratory analysis confirms the SQL ranking. Kensington and Chelsea is the most pressured latest-year local authority, with a lower-quartile affordability ratio of 20.89. The top 15 chart shows that the highest-pressure areas are concentrated in London, the South East and the East of England.

This is an important visual story because it shows concentration rather than random variation. Severe affordability pressure is not evenly distributed across the country.

## Five-year change

The five-year change analysis compares 2025 with 2020. Tandridge shows the largest increase, rising by 1.33 ratio points. Sevenoaks and Oldham both increase by 1.26 ratio points.

The top 20 increases include a broader mix of regions than the latest-year top-pressure ranking. This matters because recent deterioration is not limited to the most expensive places. Some areas with lower absolute ratios have also become noticeably less affordable over the last five years.

## Charts created

The notebook created four visual outputs:

- `visuals/latest_year_affordability_distribution.png`
- `visuals/regional_median_affordability_ratio.png`
- `visuals/top_15_affordability_pressure.png`
- `visuals/largest_five_year_increases.png`

These charts will be used in the final case study, Excel workbook and Power BI dashboard.

## Analytical interpretation

The Python exploratory analysis supports four conclusions:

1. Latest-year affordability pressure is widely distributed, with a long upper tail.
2. London, the South East and the East of England have the highest regional pressure.
3. The North East, Yorkshire and The Humber, Wales and the North West remain comparatively less pressured on median ratios.
4. Five-year change adds a separate risk lens: some areas with moderate current pressure have worsened materially since 2020.

## Next step

The next stage is to turn the cleaned data, SQL outputs and exploratory charts into an Excel review workbook and Power BI dashboard design. The Excel workbook should focus on transparent review tables and simple charts, while Power BI should focus on interactive stakeholder exploration.
