#Week 7 - Data Exploration & Understanding

🎯 Objective
To understand the dataset structure, validate data integrity, and gain a high-level overview of the data before proceeding to deeper analysis.

🔍 SQL Queries
1. 	Inspect table structure:
	Displays all columns, data types, and basic schema information to understand the dataset layout.
		PRAGMA table_info(superstore);
	
2. 	Count total records:
	Determines the total number of transactions (orders) in the dataset
		SELECT COUNT(*) AS total_orders FROM superstore;
	
3.	Assess customer and product diversity:
	Counts distinct customers and products to understand dataset breadth.
		SELECT COUNT(DISTINCT customer_id) AS total_customers,
			   COUNT(DISTINCT product_id) AS total_products
		FROM superstore;

4. 	Perform basic statistical measures:
	Provides minimum, maximum, and average values for sales and profit to assess distribution and variability.
		SELECT MIN(sales) AS min_sales, MAX(sales) AS max_sales, AVG(sales) AS avg_sales,
			   MIN(profit) AS min_profit, MAX(profit) AS max_profit, AVG(profit) AS avg_profit
		FROM superstore;

5. 	Analyze order distribution by customer segment:
	Identifies how orders are distributed across different customer segments.
		SELECT segment, COUNT(*) AS orders_per_segment
		FROM superstore
		GROUP BY segment;

6. 	Analyze order distribution by region:
	Examines regional order volume to identify geographic concentration.
		SELECT region, COUNT(*) AS orders_per_region
		FROM superstore
		GROUP BY region;

💡 Key Insights
- The dataset contains 9,994 transactions, providing sufficient volume for meaningful analysis.
- Sales and profit values show wide variation, indicating a mix of high-performing and low-performing orders.
- Order distributions across segments and regions are uneven, suggesting potential areas for deeper performance analysis in subsequent phases.

🧾 Outcome
This phase validated data readiness and established a solid understanding of the dataset’s structure, scale, and distribution patterns, forming a reliable foundation for further analytical work.

Note: Data quality issues such as inconsistent date formatting were identified and addressed in subsequent analysis phases.