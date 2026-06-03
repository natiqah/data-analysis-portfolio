SELECT
ROUND(discount / 0.05) * 0.05 AS discount_bucket,
SUM(profit) AS total_profit
FROM superstore
GROUP BY discount_bucket
ORDER BY discount_bucket;
