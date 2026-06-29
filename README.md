# Project 01: First-Time Buyer Affordability Pressure by Area

## Executive summary

This project analyses first-time buyer affordability pressure across areas in England and Wales. It uses lower-quartile house price to lower-quartile workplace-based earnings ratios as the primary measure, because this better reflects the entry-level end of the housing market than a headline average or median-only view.

The analysis is designed to identify where first-time buyers face the greatest pressure, how affordability varies by area, and where national averages may hide important local differences. The final outputs will include a cleaned dataset, SQL analysis, Python profiling and exploratory analysis, an Excel review workbook, a Power BI dashboard and a concise business-facing case study.

## Project status

Set-up and data collection are in progress. The repository forms the first project in a professional Data Analyst portfolio.

## Business background

Buying a first home is one of the clearest examples of a business-style affordability problem: the headline price matters, but it only becomes meaningful when compared with local earnings, deposit requirements and regional variation.

The purpose of this project is to identify which areas in England and Wales place the greatest affordability pressure on potential first-time buyers, and to explain the results in a way that would be useful to a housing policy team, lender, property research team or financial services stakeholder.

## Problem statement

First-time buyers do not experience the housing market evenly. A national average can hide large differences between local areas. This project compares lower-quartile house prices with lower-quartile earnings to understand where entry-level housing is most and least affordable.

## Objectives

- Build a clean, documented dataset using official UK housing affordability data.
- Use lower-quartile house price to lower-quartile earnings ratios as the main affordability measure.
- Compare affordability pressure across local authority areas.
- Identify the areas with the highest and lowest affordability pressure.
- Explore whether affordability has improved or worsened over time.
- Produce a clear written narrative, visualisations and dashboard outputs for a non-technical audience.

## Success criteria

The project will be considered successful when it contains:

- A documented raw data source.
- A cleaned dataset suitable for SQL, Python, Excel and Power BI analysis.
- A data dictionary and cleaning log.
- SQL queries with clear annotations.
- A Python notebook for data collection, cleaning and exploratory analysis.
- An Excel workbook for review-style analysis or summary checks.
- A Power BI dashboard or dashboard mock-up.
- A professional README explaining the business question, findings, recommendations, limitations and technical review points.

## Core tools

- SQL
- Python
- Excel
- Power BI
- GitHub
- GitHub Pages

## Primary analytical angle

This project focuses on first-time buyer affordability pressure by area. For that reason, the lower-quartile affordability ratio is more relevant than the median ratio, because lower-quartile prices better approximate the entry-level end of the housing market.

## Repository structure

```text
.
├── data/
│   ├── raw/
│   ├── cleaned/
│   └── dictionary/
├── docs/
├── excel/
├── notebooks/
├── power_bi/
├── python/
├── reports/
├── sql/
└── visuals/
```

## Next analytical step

The next stage completes source profiling and then creates the cleaning notebook that turns the ONS workbook into an analysis-ready area-year dataset.
