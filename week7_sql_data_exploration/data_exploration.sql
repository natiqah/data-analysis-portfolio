-- Inspect table structure to understand columns, data types, and schema layout
PRAGMA table_info(superstore);

-- Count total records to determine the number of transactions in the dataset
SELECT COUNT(*) AS total_orders FROM superstore;

-- Count distinct customers and products to assess dataset diversity
SELECT COUNT(DISTINCT customer_id) AS total_customers,
       COUNT(DISTINCT product_id) AS total_products
FROM superstore;

-- Compute basic statistical measures for sales and profit
SELECT MIN(sales) AS min_sales, MAX(sales) AS max_sales, AVG(sales) AS avg_sales,
       MIN(profit) AS min_profit, MAX(profit) AS max_profit, AVG(profit) AS avg_profit
FROM superstore;

-- Analyze order distribution across customer segments
SELECT segment, COUNT(*) AS orders_per_segment
FROM superstore
GROUP BY segment;

-- Analyze order distribution across regions
SELECT region, COUNT(*) AS orders_per_region
FROM superstore
GROUP BY region;
