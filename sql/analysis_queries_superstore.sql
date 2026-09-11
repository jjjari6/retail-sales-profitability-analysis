-- =====================================================
-- RETAIL SALES & PROFITABILITY ANALYSIS
-- Business Analysis Queries
-- MySQL Portfolio Project
-- =====================================================

USE superstore_analytics;

-- 01. EXECUTIVE KPIs
SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT product_id) AS total_products
FROM superstore;

-- 02. CATEGORY PERFORMANCE
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

-- 03. SUB-CATEGORY PERFORMANCE
SELECT
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent
FROM superstore
GROUP BY category, sub_category
ORDER BY total_profit ASC;

-- 04. TABLES DISCOUNT ANALYSIS
SELECT
    discount,
    COUNT(*) AS transactions,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent
FROM superstore
WHERE sub_category = 'Tables'
GROUP BY discount
ORDER BY discount;

-- 05. COMPANY-WIDE DISCOUNT ANALYSIS
SELECT
    discount,
    COUNT(*) AS transactions,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent
FROM superstore
GROUP BY discount
ORDER BY discount;

-- 06. REGIONAL PERFORMANCE
SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;

-- 07. STATE PERFORMANCE
SELECT
    state,
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent
FROM superstore
GROUP BY state, region
ORDER BY total_profit ASC;

-- 08. TOP 10 MOST PROFITABLE PRODUCTS
SELECT
    product_name,
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY product_name, category, sub_category
ORDER BY total_profit DESC
LIMIT 10;

-- 09. TOP 10 LOSS-MAKING PRODUCTS
SELECT
    product_name,
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY product_name, category, sub_category
ORDER BY total_profit ASC
LIMIT 10;

-- 10. TOP CUSTOMERS BY SALES
SELECT
    customer_name,
    segment,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY customer_id, customer_name, segment
ORDER BY total_sales DESC
LIMIT 10;

-- 11. YEARLY SALES TREND
SELECT
    YEAR(order_date_clean) AS year,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY YEAR(order_date_clean)
ORDER BY year;

-- 12. MONTHLY SALES TREND
SELECT
    YEAR(order_date_clean) AS year,
    MONTH(order_date_clean) AS month_number,
    MONTHNAME(order_date_clean) AS month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY
    YEAR(order_date_clean),
    MONTH(order_date_clean),
    MONTHNAME(order_date_clean)
ORDER BY year, month_number;
