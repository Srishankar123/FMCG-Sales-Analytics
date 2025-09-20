/**************************************************************
* FMCG Sales Analysis Script (Phases 1-4)              *
**************************************************************/

-- ============================================================
-- Phase 1: Database and Table Setup
-- ============================================================

CREATE DATABASE IF NOT EXISTS fmcg_sales;
USE fmcg_sales;

-- Create the main table to hold sales data
CREATE TABLE IF NOT EXISTS sales_data (
    `date` DATE,
    `sku` VARCHAR(255),
    `brand` VARCHAR(255),
    `segment` VARCHAR(255),
    `category` VARCHAR(255),
    `channel` VARCHAR(255),
    `region` VARCHAR(255),
    `pack_type` VARCHAR(255),
    `price_unit` DECIMAL(10, 2),
    `promotion_flag` BOOLEAN,
    `delivery_days` INT,
    `stock_available` INT,
    `delivered_qty` INT,
    `units_sold` INT
);

-- ============================================================
-- Phase 2: Data Quality & Integrity Checks
-- ============================================================

-- Show tables in the database to confirm creation
show tables from fmcg_sales;

-- Select all data to verify the import (optional, can be slow on large tables)
select * from sales_data;

-- Check for NULL values across key columns
SELECT
    SUM(CASE WHEN `date` IS NULL THEN 1 ELSE 0 END) AS null_dates,
    SUM(CASE WHEN sku IS NULL THEN 1 ELSE 0 END) AS null_skus,
    SUM(CASE WHEN brand IS NULL THEN 1 ELSE 0 END) AS null_brands,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS null_categories,
    SUM(CASE WHEN channel IS NULL THEN 1 ELSE 0 END) AS null_channels,
    SUM(CASE WHEN region IS NULL THEN 1 ELSE 0 END) AS null_regions,
    SUM(CASE WHEN pack_type IS NULL THEN 1 ELSE 0 END) AS null_pack_types,
    SUM(CASE WHEN units_sold IS NULL THEN 1 ELSE 0 END) AS null_units_sold,
    SUM(CASE WHEN price_unit IS NULL THEN 1 ELSE 0 END) AS null_prices
FROM sales_data;

-- Check for inconsistent categorical values
SELECT DISTINCT channel FROM sales_data;
SELECT DISTINCT region FROM sales_data;
SELECT DISTINCT pack_type FROM sales_data;
SELECT DISTINCT category FROM sales_data;

-- Check for duplicate rows
SELECT
    `date`, sku, brand, channel, region, pack_type, units_sold, COUNT(*)
FROM
    sales_data
GROUP BY
    `date`, sku, brand, channel, region, pack_type, units_sold
HAVING
    COUNT(*) > 1;

-- ============================================================
-- Phase 4: Business Intelligence Queries
-- ============================================================

-- Query 1: Total Revenue Per Category
SELECT
    category,
    CONCAT(
        FORMAT(SUM(price_unit * units_sold) / 1000000, 2),
        'M'
    ) AS total_revenue_in_millions
FROM
    sales_data
GROUP BY
    category
ORDER BY
    SUM(price_unit * units_sold) DESC;

-- Query 2: Top 10 SKUs by Sales Volume
SELECT
    sku,
    SUM(units_sold) AS total_units_sold
FROM
    sales_data
GROUP BY
    sku
ORDER BY
    total_units_sold DESC
LIMIT 10;

-- Query 3: Average Delivery Lag by Region
SELECT
    region,
    AVG(delivery_days) AS average_delivery_lag_days
FROM
    sales_data
GROUP BY
    region
ORDER BY
    average_delivery_lag_days DESC;

-- Query 4: Percentage of Sales Under Promotion
SELECT
    (SUM(CASE WHEN promotion_flag = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS percentage_of_sales_with_promotion
FROM
    sales_data;

-- Query 5: Stockout Frequency Per SKU (Top 10)
SELECT
    sku,
    COUNT(*) AS stockout_count
FROM
    sales_data
WHERE
    stock_available = 0
GROUP BY
    sku
ORDER BY
    stockout_count DESC
LIMIT 10;
