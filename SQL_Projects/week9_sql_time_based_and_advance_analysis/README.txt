#Week 9 - Time-Based & Advance Analysis

🎯 Objective
To analyze sales trends over time and examine how discounts, shipping methods, and regional product performance influence business outcomes.

🔍 Queries:
1. 	Sales Trend Over Time:
	Analyzes total sales by month to identify trends and potential seasonality. Date values were normalized due to inconsistent formatting in the source CSV.
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

2. 	Profit distribution by discount level (bucket intervals 0.05):
	Evaluates how different discount levels impact overall profitability.
		SELECT
		  ROUND(CAST(discount / 0.05 AS INTEGER) * 0.05, 2) AS discount_bucket,
		  SUM(profit) AS total_profit
		FROM superstore
		GROUP BY discount_bucket
		ORDER BY discount_bucket;
		
3.	Order volume by shipping mode:
	Examines operational patterns by comparing order volumes across shipping methods.
		SELECT ship_mode, COUNT(*) AS total_orders
		FROM superstore
		GROUP BY ship_mode
		ORDER BY total_orders DESC;
		
4.	Regional product sales performance:
	Identifies top-selling products within each region to support regional strategy decisions.
		SELECT region, product_name, SUM(sales) AS total_sales
		FROM superstore
		GROUP BY region, product_name
		ORDER BY region, total_sales DESC;
		
💡 Key Insights
- Monthly sales trends reveal fluctuations that may indicate seasonal demand.
- Higher discount levels do not always correlate with higher profit, highlighting margin trade-offs.
- Certain shipping modes dominate order volume, reflecting customer delivery preferences.
- Product performance varies significantly by region, suggesting the need for localized strategies.

🧾 Outcome
This phase combined time-based trend analysis with operational and pricing insights, enabling a more holistic understanding of business performance and customer behavior.