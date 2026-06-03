SELECT
product_name,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit
FROM superstore
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
