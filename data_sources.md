# Data sources

## Primary source: ONS housing affordability dataset

Planned source: Office for National Statistics, house price to workplace-based earnings ratio dataset.

The 2025 ONS housing affordability release was published on 26 March 2026. The dataset calculates affordability ratios by dividing house prices by gross annual workplace-based earnings, with both median and lower-quartile measures available for England and Wales.

This source is suitable because the lower-quartile measure is especially relevant for a first-time buyer angle. It is closer to the entry-level market than a national or median house price measure.

Fields expected to be useful:

- Area name
- Area code
- Year
- Lower-quartile house price
- Lower-quartile annual earnings
- Lower-quartile affordability ratio
- Median house price
- Median annual earnings
- Median affordability ratio

## Supporting source: UK House Price Index

Planned source: HM Land Registry UK House Price Index data downloads.

The UK House Price Index reports are published by HM Land Registry and include CSV data downloads. The reports collection was last updated on 17 June 2026, and the March 2026 data downloads were published on 20 May 2026.

This source may be used to provide additional context on recent house price movement, especially where a local area's affordability ratio has changed materially.

## Source handling approach

- Unedited downloads are retained in `data/raw/`.
- Analysis-ready extracts are saved in `data/cleaned/`.
- Assumptions and transformations are recorded in the cleaning log.
- Raw files remain unchanged.
- Source URLs, download dates and release dates are recorded in this file.

## Download log

| Source | File | Downloaded on | Release date | Notes |
|---|---|---:|---:|---|
| ONS housing affordability | To be added | To be added | 26 March 2026 | Primary analytical dataset |
| HM Land Registry UK HPI | To be added | To be added | 20 May 2026 for March 2026 data downloads | Supporting context if required |
