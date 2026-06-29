# Data sources

## Primary source: ONS housing affordability dataset

Planned source: Office for National Statistics, house price to workplace-based earnings ratio dataset.

This source is suitable because it includes affordability ratios calculated from house prices and gross annual workplace-based earnings. The lower-quartile measure is especially relevant for this project because it is closer to the entry-level market faced by many first-time buyers.

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

This source may be used to provide additional context on recent house price movement, especially where a local area's affordability ratio has changed materially.

## Source handling notes

- Keep unedited downloads in `data/raw/`.
- Save cleaned analysis-ready extracts in `data/cleaned/`.
- Record any assumptions or transformations in the cleaning log.
- Do not manually edit raw files.
- Keep source URLs, download dates and release dates in this file.

## Download log

| Source | File | Downloaded on | Release date | Notes |
|---|---|---:|---:|---|
| ONS housing affordability | To be added | To be added | To be added | Primary analytical dataset |
| HM Land Registry UK HPI | To be added | To be added | To be added | Supporting context if required |
