# Project review questions

This file records questions that could be used to discuss the project in a portfolio review, interview or technical walkthrough.

## 1. Why did this project use lower-quartile affordability rather than median affordability?

The project is focused on first-time buyer affordability pressure, so the lower end of the housing market is more relevant than the middle of the market. Lower-quartile house prices are a better proxy for entry-level purchase prices, while lower-quartile earnings provide a closer comparison for buyers with lower local earnings.

Median affordability is still useful as a comparison measure, but it is not the main analytical lens for this project.

## 2. What did the data cleaning stage achieve?

The cleaning stage turned the ONS workbook into an analysis-ready area-year dataset. It standardised key columns, retained the local authority and region structure, preserved missing values where they were genuine, and created a consistent table that could be used across SQL, Python, Excel and Power BI.

The final cleaned dataset contains 9,222 area-year records across 318 local authorities per year from 1997 to 2025.

## 3. How was data quality checked?

Data quality was checked through a combination of Python profiling and SQL quality checks. The review covered row counts, year coverage, duplicate local-authority-year keys, missing values and non-positive values in the main numerical fields.

The SQL checks found no duplicate local-authority-year keys and no non-positive lower-quartile house price, earnings or affordability ratio values.

## 4. What is the main finding?

Affordability pressure is highly uneven across England and Wales. In 2025, the most pressured local authorities were concentrated in London and the South East, while the least pressured areas were mainly in the North East, North West and Wales.

Kensington and Chelsea had the highest lower-quartile affordability ratio in the latest-year output, at 20.89. County Durham had the lowest ratio in the exported least-pressured output, at 3.43.

## 5. Why does the project include both latest-year ranking and change-over-time analysis?

Latest-year rankings show where affordability pressure is highest now, but they do not show whether the situation is improving or worsening. Change-over-time analysis helps identify areas where pressure has increased materially, even if those areas are not always at the top of the current ranking.

Tandridge recorded the largest five-year increase in the exported SQL and Python outputs, rising from 14.07 in 2020 to 15.40 in 2025.

## 6. What role did each tool play?

SQL was used for reproducible quality checks, ranking and comparison outputs. Python was used for data cleaning, exploratory analysis and chart creation. Excel was used as a transparent review workbook. Power BI was used to build an interactive stakeholder-facing dashboard. GitHub was used for version control, documentation and portfolio presentation.

Each tool has a clear role rather than repeating the same analysis in different formats.

## 7. What are the main limitations?

The affordability ratio is a useful comparison measure, but it is not a full mortgage affordability model. It does not include interest rates, deposit size, household savings, credit criteria, household composition, housing quality or differences between workplace-based and resident-based earnings.

The results should therefore be treated as evidence of relative affordability pressure, not as a complete measure of whether a specific household can buy in a specific area.

## 8. What would be a strong next extension?

A useful extension would add mortgage repayment assumptions, deposit requirements and household income scenarios. This would turn the area-level affordability pressure analysis into a more detailed first-time buyer affordability model.

Another extension would compare workplace-based earnings with resident-based earnings to test whether commuter areas are being understated or overstated by the current measure.

## 9. How does the project show data scepticism?

The project avoids treating the affordability ratio as a complete answer. It keeps missing values visible, separates current ranking from recent change, includes caveats in the Power BI dashboard, and explains that local affordability pressure should be interpreted alongside broader market and household factors.

## 10. How would this project be updated next year?

The update process would download the next ONS workbook, rerun the data collection and cleaning notebooks, rerun the SQL checks and analysis outputs, refresh the Python exploratory outputs, then update the Excel workbook, Power BI dashboard and written findings.