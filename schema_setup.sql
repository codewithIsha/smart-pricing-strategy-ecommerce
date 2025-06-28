-- 📦 SQL Script: Data Load and Verification

-- Step 1: Create and switch to database
CREATE DATABASE IF NOT EXISTS ecommerce_analysis;
USE ecommerce_analysis;

-- Step 2: Create target table for importing cleaned data
-- ⚠️ Update column names and types as per your actual CSV structure
CREATE TABLE IF NOT EXISTS sales_data (
    -- Example columns — replace or adjust as needed
    col1 VARCHAR(100),
    col2 INT,
    col3 DECIMAL(10,2),
    col4 DATETIME,
    col5 TEXT
    -- ... more columns as per your dataset
);

-- Step 3: Load data from cleaned CSV
-- ⚠️ Update the file path before running
-- Place 'invoices_fixed.csv' in MySQL's secure import folder
LOAD DATA INFILE '/path/to/invoices_fixed.csv'
INTO TABLE sales_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

-- Step 4: Verify row count
SELECT COUNT(*) AS total_rows_imported FROM sales_data;
