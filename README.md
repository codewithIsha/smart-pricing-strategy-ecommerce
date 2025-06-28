# Smart Pricing Strategy for E-Commerce Sales Analytics  
*(Excel → SQL → BI)*

_Confidential project assigned by a growing e-commerce startup to develop a smart pricing strategy framework._

---

This repository outlines the complete workflow for developing a smart pricing strategy using transactional e-commerce data. It includes:

- Phase 1: Data acquisition and cleaning  
- Phase 2: SQL database ingestion  
- Phase 3: Exploratory SQL-based analysis  
- Phase 4: Dashboard-ready visualization blueprint  

> Note: Raw data, cleaned CSVs, and dashboards are confidential and not included.

---

## Phase 1: Data Cleaning (Excel + Python)

**Objective:** Transform raw Excel exports into structured, analysis-ready data.

**Excel-based Cleanup:**  
- Removed blank/duplicate rows and fixed inconsistent headers  
- Filtered out records with negative quantity or unit price  
- Created new calculated columns:  
  - `Revenue = Quantity × UnitPrice`  
  - `COGS = Revenue × 0.65`  
  - `Profit = Revenue − COGS`  
- Saved cleaned output as `cleaned_sales.csv`

**Python-Assisted Formatting:**  
- Standardized inconsistent date formats using Jupyter Notebook  
- Parsed free-text dates where necessary  
- Validated data types and exported final cleaned CSV for SQL loading

**Deliverables:**  
- `format_fix_script.ipynb` – Script for parsing and formatting  
- `invoices_fixed.csv` *(referenced only)* – Final cleaned dataset

---

## Phase 2: SQL Database Setup

**Objective:** Set up a structured MySQL schema and load the cleaned dataset for analysis.

**Steps:**  
- Created a dedicated schema: `ecommerce_analysis`  
- Used `LOAD DATA INFILE` to import `invoices_fixed.csv` into `sales_data` table  
- Applied appropriate delimiters and ignored the header row  
- Performed validation by checking row counts and sampling records

**Deliverables:**  
- `schema_setup.sql` – SQL file to create schema and tables and load the CSV into MySQL

---

## Phase 3: Exploratory Data Analysis

**Objective:** Derive pricing and sales insights using SQL queries.

**Steps:**  
- Executed SQL queries to answer core business questions  
  - Total revenue, COGS, and profit  
  - Top-performing products  
  - Country-level performance  
  - Monthly trends and pricing bands  
- Organized queries by theme for reusability  
- Validated outputs and exported them for visualization

**Deliverables:**  
- `analysis_queries.sql` – Collection of SQL queries used for exploration

---

## Phase 4: Visualization

**Objective:** Build a strategic dashboard for business stakeholders.

**Components:**  
- KPI cards (Revenue, COGS, Profit)  
- Clustered column charts (Monthly revenue vs. profit)  
- Matrix tables (Product-wise breakdown)  
- Line charts (Sales trends)  
- Heatmaps (Price band performance)  
- Gauges (Profit ratio indicators)

> Note: Visualizations and datasets are excluded due to confidentiality.

---

## Tech Stack

| Category        | Tools Used                                        |
|----------------|---------------------------------------------------|
| Languages       | Python 3.x, SQL (MySQL dialect)                   |
| BI Tools        | Power BI                                          |
| Data Tools      | Excel, MySQL Workbench                            |
| Libraries       | pandas, datetime                                  |
| Analytics       | SQL (aggregation, filtering, segmentation)        |

---

## Conclusion

This project demonstrates an end-to-end data analytics pipeline—from raw, unstructured sales exports to structured insights delivered through SQL and visual dashboards. It reflects practical, real-world challenges such as inconsistent formats, business assumptions, and stakeholder requirements.

The repository highlights both technical skill and business understanding, showcasing clean data engineering, thoughtful query design, and professional-level reporting.

---
