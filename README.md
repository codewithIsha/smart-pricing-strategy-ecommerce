# 📦 Smart Pricing Strategy for E-Commerce Sales Analytics
(Excel → SQL → BI)
> 💼 _Confidential project assigned by a growing e‑commerce startup to develop a smart pricing strategy framework._

---

This repository documents the end‑to‑end workflow for building a **smart pricing strategy** on transactional sales data. You will find:

- **Phase 1:** Data acquisition & cleaning  
- **Phase 2:** SQL database ingestion  
- **Phase 3:** Exploratory analysis (queries consolidated in one file)  
- **Phase 4:** Dashboard‑ready visualization blueprint  

> 🔒 _Note: Raw data, cleaned CSVs, and final dashboards are proprietary and not included._

---


### 🧼 Phase 1: Data Cleaning (Excel + Python)

**Goal:** Transform raw Excel exports into analysis‑ready data.

1. **Excel‑based Cleanup**  
   - Opened the raw `.csv` file.  
   - Deleted blank rows, duplicate rows, and fixed faulty headers.  
   - Filtered out rows with negative `Quantity` or negative `UnitPrice`.  
   - Created new computed fields:  
     - **Revenue** = `Quantity × UnitPrice`  
     - **COGS** = `Revenue × 0.65`  
     - **Profit** = `Revenue − COGS`  
   - Saved interim output as `cleaned_sales.csv`.

2. **Python‑assisted Formatting**  
   - Loaded `cleaned_sales.csv` into the included Jupyter notebook (`format_fix_script.ipynb`).  
   - Standardized date fields:  
     - Some dates were already parsable; others arrived as free‑text and required custom parsing logic.  
   - Verified data types and exported the fully cleaned CSV for SQL ingestion.

**Key Deliverables:**  
- **`format_fix_script.ipynb`** — Python utility for parsing and standardizing date and numeric fields.  
- **`invoices_fixed.csv`** (referenced, not included) — Final cleaned dataset ready for SQL import.

---

## 🗃️ Phase 2: SQL Database Setup

**Goal:**  
Establish a robust, query‑ready data warehouse by loading the cleaned sales dataset into MySQL.

**Overview of Steps:**  
1. **Schema Initialization**  
   - Created the dedicated analytics schema (`ecommerce_analysis`) to isolate project data.  
   - Ensured proper character sets and storage engines for optimal performance.

2. **Data Ingestion**  
   - Employed MySQL’s bulk‑loading capability (`LOAD DATA INFILE`) to import the cleansed CSV (`invoices_fixed.csv`).  
   - Configured field delimiters, text enclosures, and header‑row handling to match the cleaned file format.

3. **Validation & Quality Checks**  
   - Verified row counts against source CSV to confirm completeness.  
   - Performed basic spot‑checks on critical columns

**Key Deliverables:**  
- **`schema_setup.sql`** – Commands to create the database and define any necessary table structures.

---

## 📊 Phase 3: Exploratory Data Analysis

**Goal:**  
Extract actionable insights by running a suite of SQL queries against the ingested dataset and documenting the findings.

**Overview of Steps:**  
1. **Query Execution**  
   - Leveraged a collection of parameterized SQL scripts to compute financial aggregates, identify top‑performing products, and map revenue across geographies and time periods.  
   - Organized queries by business theme (e.g., profitability, trend analysis, segmentation).

2. **Result Validation**  
   - Cross‑checked query outputs with sample subsets to ensure accuracy.  
   - Annotated any unexpected patterns or anomalies for deeper investigation.

3. **Insight Synthesis**  
   - Compiled key metrics and observations into a concise narrative.  
   - Highlighted high‑impact opportunities (e.g., underpriced SKU clusters, seasonal surges).

4. **Handoff for Visualization**  
   - Prepared curated CSV exports of aggregated tables for dashboard ingestion.  
   - Defined parameter requirements (date ranges, geographic filters) to drive interactive reports.

**Key Deliverables:**  
- **`analysis_queries.sql`** – Comprehensive library of exploratory SQL queries.

## 📈 Phase 4: Visualization

**Goal:**  
Convert SQL‑driven insights into compelling, interactive dashboards that guide strategic pricing decisions.

**Overview of Steps:**  
1. **Dashboard Platform Setup**  
   - Connected Power BI.  
   - Configured data‑source extracts to balance performance.
   - 
2. **  📊 Visualization Components:**  
- **KPI Cards:** Revenue, COGS, Profit  
- **Clustered Column Charts:** Monthly Revenue vs. Profit  
- **Matrix Table:** Product-wise breakdown  
- **Line Chart:** Time-series trends  
- **Heatmap:* Revenue and profit by price bands 

> 📌 *Note:* Due to confidentiality, visualizations and datasets are not shared in this repository.


## 🛠️ Tech Stack

| Category        | Tools Used                                        |
|------------------|---------------------------------------------------|
| 👩‍💻 Languages     | Python 3.x, SQL (MySQL dialect)                   |
| 📊 BI Tools       | Power BI  (for dashboarding)             |
| 🧰 Data Tools     | Excel (data cleaning), MySQL Workbench (DB setup) |
| 📚 Libraries      | pandas, datetime                                  |
| 🧠 Analytics      | SQL (aggregation, filtering, segmentation)        |



  ---

## ✅ Conclusion

This project demonstrates a complete data analytics pipeline—starting from real-world data cleaning, structured SQL analysis, and ending with executive-level dashboarding. It reflects a practical business use case, developed under real constraints (incomplete data, formatting issues, and confidentiality).

The repository showcases not just technical proficiency, but also a strong understanding of stakeholder needs, clarity in documentation, and end-to-end project delivery.

---
