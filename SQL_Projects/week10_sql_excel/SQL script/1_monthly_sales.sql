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
