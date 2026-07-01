# Executive summary

This project analyses first-time buyer affordability across local authority areas in England and Wales. It uses lower-quartile house price to lower-quartile workplace-based earnings ratios as the primary measure, because this better reflects the entry-level end of the housing market than a headline average or median-only view.

The analysis is designed to identify where affordability is most stretched, how the position varies by area, and where national averages may hide important local differences.

## Current status

Data collection, cleaning and the first SQL analysis stage are complete. The cleaned dataset contains 9,222 area-year records, covering 318 local authorities per year from 1997 to 2025.

## Key SQL findings

In 2025, the highest affordability pressure is concentrated in London and the South East. Kensington and Chelsea has the highest lower-quartile affordability ratio in the latest-year SQL output, at 20.89. Richmond upon Thames, Tandridge, Elmbridge and Westminster also appear in the top five.

The least pressured areas in the latest-year SQL output are mainly in the North East, North West and Wales. County Durham has the lowest lower-quartile affordability ratio in the exported output, at 3.43, followed by Burnley and Hyndburn.

The pressure-band analysis shows that all London local authorities in the cleaned dataset are either high pressure or severe pressure in 2025. London has 22 severe-pressure local authorities and 11 high-pressure local authorities.

The five-year change analysis shows that Tandridge recorded the largest increase in the exported SQL output, moving from a lower-quartile affordability ratio of 14.07 in 2020 to 15.40 in 2025.

## Analytical interpretation

The results show that first-time buyer affordability pressure is highly localised. National averages are not enough to explain the experience of potential buyers, because the difference between the highest and lowest pressure areas is substantial.

The analysis also shows the value of separating current affordability pressure from recent change. Some places are already severely stretched, while others may have lower absolute ratios but have worsened materially over the last five years.

## Next stage

The next stage is Python exploratory analysis and visualisation. This will turn the SQL outputs and cleaned dataset into charts, summary tables and a clearer final narrative for the portfolio case study.
