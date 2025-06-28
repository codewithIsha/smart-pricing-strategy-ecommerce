-- 📊 SQL Script: Exploratory Data Analysis Queries
-- Database: ecommerce_analysis
-- Table: sales_data

USE ecommerce_analysis;

-- Preview sample records
SELECT * FROM sales_data
LIMIT 5;

-- 1️⃣ Total Revenue, COGS, and Profit
SELECT 
  ROUND(SUM(Revenue), 2) AS total_revenue,
  ROUND(SUM(COGS), 2) AS total_cogs,
  ROUND(SUM(Profit), 2) AS total_profit
FROM sales_data;

-- 2️⃣ Top 10 Products by Profit
SELECT
  Description,
  ROUND(SUM(Profit), 2) AS total_profit
FROM sales_data
GROUP BY Description
ORDER BY total_profit DESC
LIMIT 10;

-- 3️⃣ Country-wise Revenue Distribution
SELECT
  Country,
  ROUND(SUM(Revenue), 2) AS total_revenue
FROM sales_data
GROUP BY Country
ORDER BY total_revenue DESC;

-- 4️⃣ Monthly Revenue Trends
SELECT
  DATE_FORMAT(InvoiceDate, '%Y-%m') AS month,
  ROUND(SUM(Revenue), 2) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;
