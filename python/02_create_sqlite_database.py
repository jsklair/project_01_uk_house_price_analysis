"""
Create a local SQLite database from the cleaned affordability dataset.

This script supports the SQL analysis stage of Project 01. It reads the cleaned
CSV created by notebook 02 and writes a local SQLite database that can be used
with DB Browser for SQLite, VS Code extensions or Python's sqlite3 module.
"""

from pathlib import Path
import sqlite3

import pandas as pd


PROJECT_ROOT = Path(__file__).resolve().parents[1]
CLEANED_DATA_PATH = PROJECT_ROOT / "data" / "cleaned" / "affordability_area_year_cleaned.csv"
DATABASE_DIR = PROJECT_ROOT / "data" / "database"
DATABASE_PATH = DATABASE_DIR / "affordability.db"
TABLE_NAME = "affordability_area_year"


def main() -> None:
    if not CLEANED_DATA_PATH.exists():
        raise FileNotFoundError(
            f"Cleaned data not found: {CLEANED_DATA_PATH}. Run notebook 02 first."
        )

    DATABASE_DIR.mkdir(parents=True, exist_ok=True)

    df = pd.read_csv(CLEANED_DATA_PATH)

    with sqlite3.connect(DATABASE_PATH) as connection:
        df.to_sql(TABLE_NAME, connection, if_exists="replace", index=False)

        row_count = connection.execute(
            f"SELECT COUNT(*) FROM {TABLE_NAME}"
        ).fetchone()[0]

    print(f"Created database: {DATABASE_PATH.relative_to(PROJECT_ROOT)}")
    print(f"Created table: {TABLE_NAME}")
    print(f"Loaded rows: {row_count:,}")


if __name__ == "__main__":
    main()
