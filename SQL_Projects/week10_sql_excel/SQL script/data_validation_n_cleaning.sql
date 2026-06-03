SELECT
  printf(
    '%04d-%02d',
    CAST(substr(TRIM(order_date), instr(TRIM(order_date), '/') + instr(substr(TRIM(order_date), instr(TRIM(order_date), '/') + 1), '/') + 1) AS INTEGER),
    CAST(substr(TRIM(order_date), 1, instr(TRIM(order_date), '/') - 1) AS INTEGER)
  ) AS year_month
FROM superstore
LIMIT 20;

SELECT
COUNT(*) AS total_rows,
COUNT(order_date) AS valid_dates
FROM superstore;
