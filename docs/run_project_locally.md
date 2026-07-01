# Reproducibility guide

This note records how the project can be reproduced locally from the public repository. It is intended to support review of the analysis, not to replace the project findings in the main README or GitHub Pages summary.

## Repository

```bash
git clone https://github.com/jsklair/project_01_uk_house_price_analysis.git
cd project_01_uk_house_price_analysis
```

The completed project is held on the `main` branch.

```bash
git switch main
git pull origin main
```

## Python environment

Create and activate a local virtual environment.

Windows PowerShell:

```powershell
python -m venv .venv
.venv\Scripts\Activate.ps1
```

macOS or Linux:

```bash
python -m venv .venv
source .venv/bin/activate
```

Install the project requirements:

```bash
pip install -r requirements.txt
```

## Notebooks

The notebooks are stored in `notebooks/` and are numbered in the order they were used.

```text
notebooks/01_data_collection_and_profiling.ipynb
notebooks/02_data_cleaning.ipynb
notebooks/03_python_exploratory_analysis.ipynb
```

Run the notebooks from top to bottom to recreate the source record, cleaned dataset, exploratory outputs and saved Python charts.

## SQL workflow

The SQL scripts are stored in `sql/`.

```text
sql/01_data_quality_checks.sql
sql/02_affordability_pressure_analysis.sql
```

The exported SQL results are stored in:

```text
sql/outputs/data_quality/
sql/outputs/analysis/
```

These outputs support the quality checks, rankings, regional comparisons and five-year change analysis described in the project reports.

## Main analytical outputs

The main reusable outputs are:

```text
data/cleaned/affordability_area_year_cleaned.csv
data/dictionary/data_dictionary.csv
reports/sql_findings.md
reports/python_exploratory_findings.md
reports/final_recommendations.md
visuals/
power_bi/screenshots/
```

## Raw data handling

The raw ONS workbook is downloaded or stored locally under `data/raw/` during reproduction. The raw workbook is not committed to the repository.

```text
data/raw/aff1ratioofhousepricetoworkplacebasedearnings.xlsx
```

The raw file should not be manually edited. The cleaned dataset is created from scripted cleaning steps so the analysis remains auditable.

## Dashboard review

The Power BI dashboard file is stored in:

```text
power_bi/first_time_buyer_affordability_dashboard.pbix
```

Dashboard screenshots are stored in:

```text
power_bi/screenshots/
```

The screenshots allow the dashboard design and findings to be reviewed without opening Power BI Desktop.
