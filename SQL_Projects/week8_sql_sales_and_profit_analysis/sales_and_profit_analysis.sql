-- Analyze total sales by region to identify high- and low-performing regions 
SELECT region, SUM(sales) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

-- Analyze profit distribution by category and sub-category
SELECT category, sub_category, SUM(profit) AS total_profit
FROM superstore
GROUP BY category, sub_category
ORDER BY total_profit DESC;

-- Identify the top 10 most profitable products
SELECT product_name, SUM(profit) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- Identify the top 5 customers by total sales
SELECT customer_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;

