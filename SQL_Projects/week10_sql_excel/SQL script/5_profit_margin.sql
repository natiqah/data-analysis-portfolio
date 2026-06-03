SELECT
category,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_percent
FROM superstore
GROUP BY category
ORDER BY profit_margin_percent DESC;
