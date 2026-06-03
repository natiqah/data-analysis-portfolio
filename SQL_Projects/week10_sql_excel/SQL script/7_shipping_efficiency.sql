WITH cleaned_dates AS (
  SELECT
    ship_mode,

    printf('%04d-%02d-%02d',
      CAST(substr(TRIM(order_date),
        instr(TRIM(order_date), '/') +
        instr(substr(TRIM(order_date), instr(TRIM(order_date), '/') + 1), '/') + 1
      ) AS INTEGER),
      CAST(substr(TRIM(order_date), 1, instr(TRIM(order_date), '/') - 1) AS INTEGER),
      CAST(substr(
        substr(TRIM(order_date), instr(TRIM(order_date), '/') + 1),
        1,
        instr(substr(TRIM(order_date), instr(TRIM(order_date), '/') + 1), '/') - 1
      ) AS INTEGER)
    ) AS clean_order_date,

    printf('%04d-%02d-%02d',
      CAST(substr(TRIM(ship_date),
        instr(TRIM(ship_date), '/') +
        instr(substr(TRIM(ship_date), instr(TRIM(ship_date), '/') + 1), '/') + 1
      ) AS INTEGER),
      CAST(substr(TRIM(ship_date), 1, instr(TRIM(ship_date), '/') - 1) AS INTEGER),
      CAST(substr(
        substr(TRIM(ship_date), instr(TRIM(ship_date), '/') + 1),
        1,
        instr(substr(TRIM(ship_date), instr(TRIM(ship_date), '/') + 1), '/') - 1
      ) AS INTEGER)
    ) AS clean_ship_date

  FROM superstore
)

SELECT
  ship_mode,
  COUNT(*) AS total_orders,

  ROUND(
    AVG(julianday(clean_ship_date) - julianday(clean_order_date)), 2
  ) AS avg_shipping_days,

  MIN(julianday(clean_ship_date) - julianday(clean_order_date)) AS min_shipping_days,

  MAX(julianday(clean_ship_date) - julianday(clean_order_date)) AS max_shipping_days

FROM cleaned_dates
GROUP BY ship_mode
ORDER BY avg_shipping_days;
