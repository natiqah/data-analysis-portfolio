-- Analyze monthly sales trend by normalizing order_date into YYYY-MM format
SELECT
  printf(
    '%04d-%02d',
    CAST(substr(TRIM(order_date), instr(TRIM(order_date), '/') + instr(substr(TRIM(order_date), instr(TRIM(order_date), '/') + 1), '/') + 1) AS INTEGER),
    CAST(substr(TRIM(order_date), 1, instr(TRIM(order_date), '/') - 1) AS INTEGER)
  ) AS year_month,
  SUM(sales) AS total_sales
FROM superstore
WHERE order_date IS NOT NULL
GROUP BY year_month
ORDER BY year_month;

-- Bucket discounts into 5% intervals to identify profitability trends across discount levels
SELECT
  ROUND(CAST(discount / 0.05 AS INTEGER) * 0.05, 2) AS discount_bucket,
  SUM(profit) AS total_profit
FROM superstore
GROUP BY discount_bucket
ORDER BY discount_bucket;

-- Analyze order volume by shipping mode to understand fulfillment patterns
SELECT ship_mode, COUNT(*) AS total_orders
FROM superstore
GROUP BY ship_mode
ORDER BY total_orders DESC;

-- Analyze regional product sales performance
SELECT region, product_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY region, product_name
ORDER BY region, total_sales DESC;