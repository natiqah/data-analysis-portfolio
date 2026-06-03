#Week 10 - SQL + Power BI Analysis — Superstore Dataset

📌 Project Overview

	This project demonstrates an end-to-end data analysis workflow by combining SQL for data extraction and transformation with Power BI for interactive dashboard development and business insight generation.

	The objective is to simulate a real-world analytics scenario where raw transactional data is processed using SQL and then visualized in Power BI to support data-driven decision-making.

🎯 Objectives
	1. Extract and prepare data using SQL queries
	2. Handle data quality issues (e.g., date format inconsistencies)
	3. Build interactive dashboards in Power BI
	4. Analyze sales performance, profitability, and operational efficiency
	5. Generate actionable business insights from structured data

🧾 Dataset used
	Superstore (from Kaggle)  

🛠 Tools Used
	SQL (SQLite)
		Data cleaning (date parsing)
		Aggregation and grouping
		Analytical queries (sales, profit, discount impact)
	Power BI
		Data modeling
		DAX measures
		Matrix and chart visuals
		Conditional formatting
		Interactive filtering (slicers)

📊 Dashboard Overview (Power BI)

🟦 Page 1 — Executive KPI Overview

	Purpose: Provide a high-level summary of business performance

	Visuals:
	Total Sales (USD)
	Total Profit (USD)
	Profit Margin (%)
	Average Order Value (USD)
	Total Orders
	Line Chart: Sales & Profit Trend

	Insight Focus:
	Overall business performance
	Revenue and profitability trends over time
	
🟩 Page 2 — Product Performance Analysis

	Purpose: Analyze performance at product level

	Visuals:
	Matrix: Category → Product Name
	Sales
	Profit
	Profit Margin

	Features:
	Hierarchical drill-down
	Sorted by highest sales
	Conditional formatting for profitability

	Insight Focus:
	Identify high-performing and underperforming products
	Evaluate relationship between sales and profitability
	
🟨 Page 3 — Shipping Analytics

	Purpose: Evaluate operational efficiency of shipping methods

	Visuals:
	Matrix:
	Ship Mode
	Total Orders
	Average Shipping Days
	Bar Chart: Total Orders by Ship Mode

	Insight Focus:
	Comparison between shipping speed and usage
	Identification of trade-offs between cost and delivery efficiency
	
🟪 Page 4 — Category Profitability Analysis

	Purpose: Identify profitability patterns at category and sub-category level

	Visuals:
	Matrix (Heatmap style):
	Category → Sub-Category
	Profit Margin (with conditional formatting)
	Bar Chart: Profit Margin by Category

	Insight Focus:
	Detect consistently low or negative margin areas
	Highlight categories requiring pricing or cost optimization
	
🧠 Key Insights
	- High sales do not always translate into high profitability
	- Certain product categories show consistently lower margins
	- Shipping methods reflect trade-offs between delivery speed and usage frequency
	- Profitability varies significantly across product segments
	
🗂️ Data Preparation Notes
	Original date fields were stored as text and required transformation into proper date format using SQL and DAX
	SQL was used to perform initial aggregation and exploratory analysis
	Power BI visuals were built using the fact table and DAX measures to ensure full interactivity with filters

📌 Project Highlights
	Combines SQL and Power BI in a single workflow
	Demonstrates both technical querying skills and business-oriented visualization
	Focuses on structured analysis rather than only dashboard design
	Avoids redundancy by separating analysis into distinct report pages
	
