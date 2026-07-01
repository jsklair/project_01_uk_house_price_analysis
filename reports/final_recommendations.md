# Final recommendations

## Purpose

This report translates the analysis into practical recommendations for a stakeholder interested in first-time buyer affordability pressure across England and Wales.

The recommendations are based on the cleaned ONS affordability dataset, SQL analysis, Python exploratory analysis, Excel review workbook and Power BI dashboard.

## Recommendation 1: Do not rely on national affordability averages

First-time buyer affordability pressure is not evenly distributed. The 2025 analysis shows a clear gap between the most and least pressured local authorities.

Kensington and Chelsea has the highest lower-quartile affordability ratio in the latest-year output, at 20.89. County Durham has the lowest ratio in the exported least-pressured output, at 3.43.

A single national average would hide this range. Any policy, lending, housing supply or customer affordability review should therefore use local authority level analysis as well as national or regional summaries.

## Recommendation 2: Treat London and the South East as the highest-pressure areas

The highest-pressure areas in the latest-year results are concentrated in London and the South East. Seven of the top 10 most pressured local authorities in 2025 are in London, with the remaining three in the South East.

The regional median analysis supports the same conclusion. London has the highest 2025 regional median lower-quartile affordability ratio at 12.74. The South East follows at 10.24, and the East of England at 9.92.

For a stakeholder, this means London and the South East should be treated as distinct high-pressure markets rather than simply part of the national housing picture.

## Recommendation 3: Use lower-pressure areas as a comparison group, not as proof that affordability is easy

The least pressured areas are mainly in the North East, North West and Wales. County Durham, Burnley, Hyndburn, Hartlepool and Middlesbrough appear among the lowest-ratio areas in the latest-year outputs.

These areas provide a useful comparison group, but they should not be interpreted as places where buying is necessarily easy. The affordability ratio does not capture deposit size, mortgage rates, household wealth, credit conditions, job security or local housing quality.

The better interpretation is that these areas have lower relative pressure on this specific income-to-price measure.

## Recommendation 4: Monitor areas with worsening recent trends

Latest-year rankings do not tell the whole story. Some areas may not be at the very top of the current pressure ranking but may still be moving quickly in the wrong direction.

Tandridge recorded the largest five-year increase in the exported SQL and Python outputs, rising from 14.07 in 2020 to 15.40 in 2025. Oldham and Sevenoaks also recorded increases of 1.26 ratio points.

Stakeholders should therefore monitor both current pressure and recent change. A useful review pack should include latest-year rankings, regional medians and five-year movement.

## Recommendation 5: Keep the analysis transparent and repeatable

The project uses a cleaned dataset, data dictionary, SQL scripts, exported SQL outputs, Python notebook, Excel review workbook and Power BI dashboard. This makes the analysis easier to audit and repeat.

For future updates, the same workflow should be reused when the next ONS release becomes available. The update process should refresh the raw source record, rerun the cleaning notebook, rerun SQL and Python outputs, then refresh the Excel and Power BI files.

## Caveats

The affordability ratio is a strong comparison measure, but it is not a complete affordability model. It does not include mortgage interest rates, deposit requirements, household savings, household composition, commuting patterns, housing quality or the difference between workplace-based and resident-based earnings.

The results should therefore be treated as evidence of relative affordability pressure, not as a full assessment of whether a specific household can buy in a specific area.

## Suggested next analysis

A useful follow-up project would add mortgage costs, deposit assumptions and household income scenarios. That would turn the current area-level pressure analysis into a more detailed first-time buyer affordability model.

Another extension would compare workplace-based earnings with resident-based earnings to test whether commuter areas are being understated or overstated by the current measure.

## Overall conclusion

The analysis shows that first-time buyer affordability pressure is highly localised. London and the South East stand out as the highest-pressure areas, while the North East, North West and Wales contain many of the lower-ratio areas.

The strongest analytical approach is to combine latest-year rankings, regional summaries and change-over-time analysis. This gives a more balanced picture than any single headline measure.