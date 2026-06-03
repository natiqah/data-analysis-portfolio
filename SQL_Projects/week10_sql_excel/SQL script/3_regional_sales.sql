SELECT
  region,
  state,
  SUM(sales) AS total_sales
FROM superstore
GROUP BY region, state
ORDER BY total_sales DESC;