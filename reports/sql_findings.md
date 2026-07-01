# SQL findings

This report summarises the first set of findings produced from the SQL analysis stage. The outputs are based on the cleaned `affordability_area_year` table and exported SQL results stored under `sql/outputs/`.

## Data quality summary

The SQL quality checks confirm that the cleaned dataset is suitable for analysis:

- the dataset contains 9,222 area-year records;
- each year from 1997 to 2025 contains 318 local authority records;
- no duplicate local-authority-year keys were found;
- no non-positive lower-quartile house price, earnings or affordability ratio values were found;
- the latest available analytical year is 2025.

There are some missing lower-quartile affordability ratios and lower-quartile earnings values. These records are retained in the cleaned dataset, but null affordability ratios are excluded from ranking and comparison queries.

## Finding 1: The highest affordability pressure is concentrated in London and the South East

In 2025, Kensington and Chelsea had the highest lower-quartile affordability ratio in the dataset. Its lower-quartile house price was £700,000, compared with lower-quartile workplace-based annual earnings of £33,510, giving a lower-quartile affordability ratio of 20.89.

The top 10 most pressured local authorities were dominated by London and the South East:

| Rank | Local authority | Region | Lower-quartile affordability ratio |
|---:|---|---|---:|
| 1 | Kensington and Chelsea | London | 20.89 |
| 2 | Richmond upon Thames | London | 15.99 |
| 3 | Tandridge | South East | 15.40 |
| 4 | Elmbridge | South East | 15.24 |
| 5 | Westminster | London | 15.22 |
| 6 | Haringey | London | 15.16 |
| 7 | Wandsworth | London | 14.50 |
| 8 | Sevenoaks | South East | 14.26 |
| 9 | Hammersmith and Fulham | London | 14.21 |
| 10 | Redbridge | London | 14.19 |

This suggests that the most severe entry-level affordability pressure is not evenly spread across England and Wales. It is heavily concentrated in high-price southern markets, particularly London and commuter-belt areas.

## Finding 2: Lower-pressure areas are concentrated in the North East, North West and Wales

The least pressured areas in 2025 were mainly in the North East, North West and Wales. County Durham had the lowest lower-quartile affordability ratio in the exported SQL output, with a lower-quartile house price of £92,500 and lower-quartile workplace-based annual earnings of £27,003. This produced a lower-quartile affordability ratio of 3.43.

The 10 least pressured local authorities were:

| Local authority | Region | Lower-quartile affordability ratio |
|---|---|---:|
| County Durham | North East | 3.43 |
| Burnley | North West | 3.48 |
| Hyndburn | North West | 3.51 |
| Hartlepool | North East | 3.74 |
| Middlesbrough | North East | 3.85 |
| Pendle | North West | 3.92 |
| Blackpool | North West | 4.00 |
| Cumberland | North West | 4.13 |
| Kingston upon Hull, City of | Yorkshire and The Humber | 4.13 |
| Stoke-on-Trent | West Midlands | 4.15 |

These results show that lower prices can materially offset lower local earnings. They also show why a national average is a weak guide to first-time buyer affordability pressure.

## Finding 3: London has no lower or moderate pressure local authorities in the latest year

The pressure-band query shows that, in 2025, all London local authorities in the cleaned dataset fell into either the high-pressure or severe-pressure bands:

- 22 London local authorities were in the severe-pressure band;
- 11 London local authorities were in the high-pressure band;
- none were in the moderate-pressure or lower-pressure bands.

The South East also had widespread pressure, with 8 local authorities in the severe-pressure band and 50 in the high-pressure band.

By contrast, the North East had 9 local authorities in the lower-pressure band and 3 in the moderate-pressure band. Wales had 4 lower-pressure areas, 17 moderate-pressure areas and only 1 high-pressure area in the latest-year output.

## Finding 4: Some already pressured areas have become worse over the last five years

The five-year change query compares 2025 with 2020. Tandridge recorded the largest increase in the exported SQL output, moving from a lower-quartile affordability ratio of 14.07 in 2020 to 15.40 in 2025, an increase of 1.33 ratio points.

The largest increases included a mix of already expensive southern areas and several northern or Midlands authorities where ratios rose from a lower base:

| Local authority | Region | 2020 ratio | 2025 ratio | Change |
|---|---|---:|---:|---:|
| Tandridge | South East | 14.07 | 15.40 | 1.33 |
| Oldham | North West | 4.78 | 6.04 | 1.26 |
| Sevenoaks | South East | 13.00 | 14.26 | 1.26 |
| South Staffordshire | West Midlands | 7.77 | 8.85 | 1.08 |
| Derby | East Midlands | 4.57 | 5.60 | 1.03 |

This matters because worsening affordability is not only a London issue. Some areas with more moderate absolute ratios have still become materially less affordable over the period reviewed.

## Analytical interpretation

The SQL analysis supports three clear conclusions:

1. Entry-level affordability pressure is highly localised.
2. London and the South East dominate the highest-pressure end of the distribution.
3. Changes over time need to be reviewed separately from latest-year rankings, because some areas with moderate current ratios may still be moving quickly in the wrong direction.

## Implications for stakeholders

For a housing policy or financial services audience, the results suggest that affordability should not be assessed using a single national benchmark. Local pressure bands, regional distribution and recent change all add useful context.

A lender, housing researcher or local authority insight team would likely want to distinguish between:

- areas where affordability is already severely stretched;
- areas where affordability is lower but worsening quickly;
- areas where affordability remains comparatively less stretched;
- areas where missing or suppressed earnings data limits interpretation.

## Limitations

The lower-quartile affordability ratio is a useful proxy for first-time buyer pressure, but it is not a full mortgage affordability model. It does not include deposits, interest rates, household income, credit constraints, commuting patterns or property-type differences. Earnings are workplace-based, so they may not reflect the incomes of people who live in each area.
