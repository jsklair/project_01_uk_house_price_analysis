# Raw data

This folder is used locally for the original ONS workbook during project reproduction.

## Source file

```text
aff1ratioofhousepricetoworkplacebasedearnings.xlsx
```

The workbook is downloaded from the ONS house price to workplace-based earnings affordability dataset.

## Repository handling

The raw workbook is not committed to the repository. It is excluded through `.gitignore` so the public repo contains the reproducible workflow, source notes and cleaned outputs rather than the original downloaded workbook.

Raw data should not be edited manually. Any transformation should be carried out through the documented cleaning process and saved separately under `data/cleaned/`.
