📊 Retail Inventory Forecasting – SQL Analysis
This part of the project involves structured querying and analysis of retail inventory data using MySQL. The goal was to derive actionable insights on SKU performance, inventory risk, and category-level trends.

🗂️ Database Structure
Database: retail_store_inventory

Tables Created:

products: Product catalog with name and category

inventory: Tracks inventory levels over time

sales: Daily sales records

raw_data: Main dataset with stock, sales, forecast, and price

sales_trend: Custom table to visualize sales over time

top_skus: Custom table for identifying bestsellers

stock_vs_sales: Custom table to compare stock vs recent sales

🧠 Key SQL Queries
Top 10 Selling SKUs

sql
Copy
Edit
SELECT SKU_Name, Sales_Last_30_Days
FROM raw_data
ORDER BY Sales_Last_30_Days DESC
LIMIT 10;
SKUs at Risk of Stock Out

sql
Copy
Edit
SELECT SKU_Name, Current_Stock, Forecast_30_Days
FROM raw_data
WHERE Forecast_30_Days > Current_Stock;
Total Inventory Value

sql
Copy
Edit
SELECT SUM(Current_Stock * Price) AS total_inventory_value
FROM raw_data;
Category-wise Summary

sql
Copy
Edit
SELECT Category, COUNT(*) AS total_skus,
       SUM(Current_Stock) AS total_stock,
       SUM(Sales_Last_30_Days) AS total_sales
FROM raw_data
GROUP BY Category;
Overstocked Items (Slow Movers)

sql
Copy
Edit
SELECT SKU_Name, Current_Stock, Sales_Last_30_Days
FROM raw_data
WHERE Current_Stock > 3 * Sales_Last_30_Days;
Stock vs Forecast Risk

sql
Copy
Edit
SELECT SKU_Name, Current_Stock, Forecast_30_Days,
       (Forecast_30_Days - Current_Stock) AS deficit
FROM raw_data
WHERE Forecast_30_Days > Current_Stock;
📥 Data
Imported from cleaned CSV version of the Excel dataset

Primary table used: raw_data

📤 Outputs
All major SQL outputs exported as .csv and saved under the SQL_Exports folder (or path you define in GitHub)

