SELECT
segment,
COUNT(DISTINCT order_id) AS total_orders,
SUM(sales) AS total_sales,
ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM superstore
GROUP BY segment
ORDER BY avg_order_value DESC;
