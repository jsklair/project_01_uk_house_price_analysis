# Data sources

## Primary source

The project uses the Office for National Statistics house price to workplace-based earnings affordability dataset for England and Wales.

Source workbook:

```text
aff1ratioofhousepricetoworkplacebasedearnings.xlsx
```

The dataset provides affordability ratios by dividing house prices by gross annual workplace-based earnings. The project focuses on the lower-quartile measure because it is more relevant to an entry-level first-time buyer affordability question than a national or median-only view.

## Source fields used

The cleaned analysis uses fields for:

- country or region code;
- country or region name;
- local authority code;
- local authority name;
- year;
- lower-quartile house price;
- lower-quartile annual earnings;
- lower-quartile affordability ratio;
- median affordability ratio.

## Source handling approach

- The raw workbook is stored locally under `data/raw/` during reproduction.
- The raw workbook is not committed to the repository.
- Analysis-ready data is saved under `data/cleaned/`.
- Transformations are documented in `reports/cleaning_log.md`.
- The data dictionary is stored in `data/dictionary/data_dictionary.csv`.
- Source tracking is recorded in `data/raw/source_record.csv`.

## Download record

| Source | File | Release date | Use in project |
|---|---|---:|---|
| Office for National Statistics, house price to workplace-based earnings affordability dataset | `aff1ratioofhousepricetoworkplacebasedearnings.xlsx` | 26 March 2026 | Primary analytical dataset |

## Notes

A separate UK House Price Index source was considered during early planning, but it was not used in the final analysis. Keeping the project focused on the ONS affordability workbook made the workflow clearer and avoided mixing different source definitions.
