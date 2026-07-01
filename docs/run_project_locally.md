# Running Project 01 locally

## 1. Clone the repository

```bash
git clone https://github.com/jsklair/project_01_uk_house_price_analysis.git
cd project_01_uk_house_price_analysis
```

## 2. Switch to the project branch

```bash
git checkout project/01-first-time-buyer-affordability
```

## 3. Create a Python environment

```bash
python -m venv .venv
.venv\Scripts\activate
```

On macOS or Linux, use:

```bash
source .venv/bin/activate
```

## 4. Install requirements

```bash
pip install -r requirements.txt
```

## 5. Start Jupyter

```bash
jupyter notebook
```

Open:

```text
notebooks/01_data_collection_and_profiling.ipynb
```

Run the notebook from top to bottom. It will download the ONS workbook into `data/raw/`, inspect the workbook structure and save first profiling outputs.

## 6. Expected outputs

After running the first notebook, the following files should exist locally:

```text
data/raw/aff1ratioofhousepricetoworkplacebasedearnings.xlsx
data/raw/source_record.csv
data/cleaned/initial_column_profile.csv
```

The raw XLSX file should not be manually edited.
