#Week 8 - Sales & Profit Performance Analysis

🎯 Objective
To identify top-performing regions, categories, products, and customers, and to evaluate overall business profitability.

🔍 Queries
1. 	Total Sales by Region:
	Identifies regions with the highest and lowest sales contribution.
		SELECT region, SUM(sales) AS total_sales
		FROM superstore
		GROUP BY region
		ORDER BY total_sales DESC;

2. 	Total Profit by Category and Sub-Category:
	Evaluates profitability across product categories to identify high- and low-performing segments.
		SELECT category, sub_category, SUM(profit) AS total_profit
		FROM superstore
		GROUP BY category, sub_category
		ORDER BY total_profit DESC;

3. 	Top 10 Product by Profit:
	Highlights the most profitable products, which can inform inventory and product focus decisions.
		SELECT product_name, SUM(profit) AS total_profit
		FROM superstore
		GROUP BY product_name
		ORDER BY total_profit DESC
		LIMIT 10;
	
4. 	Top 5 Customers by Sales
	Identifies high-value customers, supporting loyalty programs and targeted marketing initiatives. 
		SELECT customer_name, SUM(sales) AS total_sales
		FROM superstore
		GROUP BY customer_name
		ORDER BY total_sales DESC
		LIMIT 5;
	
💡 Key Insights
- Certain regions consistently generate higher sales, indicating stronger regional demand.
- Some sub-categories contribute disproportionately to profit, while others generate high sales but low profitability.
- These insights can inform product focus, inventory decisions, and customer retention strategies

🧾 Outcome
This phase identified key revenue and profit drivers, providing a strong foundation for data-driven business recommendations and deeper time-based analysis in subsequent phases.

Note: These findings will be further analyzed over time in Week 9 to assess trends and seasonality.