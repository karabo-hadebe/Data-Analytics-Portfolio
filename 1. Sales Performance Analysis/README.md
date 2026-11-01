# Superstore Sales Performance Analysis

## Project Overview

This project analyses retail sales data from the Sample Superstore dataset using Google Sheets. The objective was to explore product performance, monthly sales trends, and regional revenue contributions to identify patterns that could support business decision-making.

The analysis includes data-quality verification, date standardisation, pivot tables, data visualisation, and an interactive spreadsheet-based dashboard.

## Business Questions

The analysis addresses three key questions:

1. Which products generate the most sales revenue?
2. How does sales performance change over time?
3. Which regions contribute the most sales revenue?

## Dataset

- **Dataset:** Sample Superstore
- **Source:** [Superstore Dataset — Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
- **Records:** 9,994
- **Time Period:** 2014-2017
- **Key Fields:** Order Date, Product Name, Region, Sales

The dataset contains retail transactions across different products, categories, and geographical regions.

## Tools and Techniques

**Tool:** Google Sheets

**Techniques:**
- Data-quality assessment
- Date standardisation
- Spreadsheet formulas
- Pivot tables and aggregation
- Sales trend analysis
- Bar and line charts
- Dashboard development
- KPI reporting

## Data Preparation and Quality Assessment

The original dataset was preserved in a separate Raw Data worksheet, while a working copy was maintained in Cleaned Data.

During preparation, inconsistent date representations were identified. These were standardised, and a Year-Month helper column was created to support accurate monthly sales aggregation.

The following data-quality checks were performed:

| Quality Check | Result |
|---|---|
| Missing Order Dates | 0 |
| Missing Product Names | 0 |
| Missing Sales Values | 0 |
| Missing Regions | 0 |
| Negative Sales Values | 0 |
| Zero Sales Values | 0 |
| Exact Duplicate Records | 0 |

The checks found no additional issues in the assessed fields and records. The date-formatting issue was corrected before the final monthly sales analysis.

## Analysis and Visualisation

### 1. Product Sales Performance

Sales revenue was aggregated by product using pivot tables. The ten highest-revenue products were visualised using a bar chart to compare product contributions.

### 2. Monthly Sales Trends

Order dates were standardised into a consistent Year-Month format. Monthly revenue was calculated using SUM aggregation and visualised with a line chart to examine changes over the four-year period.

### 3. Regional Sales Performance

Sales revenue was aggregated by region and presented in a bar chart to compare geographical contributions.

## Dashboard

The final dashboard brings together three sales analyses and a total sales revenue KPI.

**Total Sales Revenue: $2,297,200.86**

![Superstore Sales Dashboard](Dashboard_Screenshot.png)

## Key Findings

1. **Product Performance:** Revenue varied substantially across products, with the highest-performing products contributing notably to overall sales.

2. **Regional Performance:** The West region generated the highest sales revenue, followed by the East, Central, and South regions.

3. **Monthly Sales Trends:** Revenue fluctuated across the analysis period, with several stronger monthly sales performances occurring toward the end of 2017.

## Project Files

- `Superstore_Sales_Analysis.xlsx` - Workbook containing the data, analyses, charts, dashboard, and quality documentation.
- `Dashboard_Screenshot.png` - Visual preview of the completed dashboard.
- `README.md` - Project documentation.

## Conclusion

This project demonstrates the use of Google Sheets to prepare and verify retail sales data, answer business questions, and communicate findings through visual analysis.

It strengthened practical skills in spreadsheet-based analytics, data validation, aggregation, and dashboard development.