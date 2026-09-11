-- =====================================================
-- RETAIL SALES & PROFITABILITY ANALYSIS
-- Data Preparation
-- MySQL Portfolio Project
-- =====================================================

CREATE DATABASE IF NOT EXISTS superstore_analytics;
USE superstore_analytics;

SET GLOBAL local_infile = 1;

DROP TABLE IF EXISTS superstore;

		CREATE TABLE superstore
			(
				row_id INT,
				order_id TEXT,
				order_date TEXT,
				ship_date TEXT,
				ship_mode TEXT,
				customer_id TEXT,
				customer_name TEXT,
				segment TEXT,
				country TEXT,
				city TEXT,
				state TEXT,
				postal_code INT,
				region TEXT,
				product_id TEXT,
				category TEXT,
				sub_category TEXT,
				product_name TEXT,
				sales DOUBLE,
				quantity INT,
				discount DOUBLE,
				profit DOUBLE
			);

LOAD DATA LOCAL INFILE 'C:/mysql_data/Sample - Superstore.csv'
INTO TABLE superstore
CHARACTER SET latin1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT COUNT(*) AS total_rows
FROM superstore;

ALTER TABLE superstore
ADD COLUMN order_date_clean DATE,
ADD COLUMN ship_date_clean DATE;

SET SQL_SAFE_UPDATES = 0;

UPDATE superstore
SET
    order_date_clean = STR_TO_DATE(order_date, '%m/%d/%Y'),
    ship_date_clean = STR_TO_DATE(ship_date, '%m/%d/%Y');

SET SQL_SAFE_UPDATES = 1;

SELECT
    order_date,
    order_date_clean,
    ship_date,
    ship_date_clean
FROM superstore
LIMIT 10;
