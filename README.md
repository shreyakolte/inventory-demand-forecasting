# Retail-Inventory-Demand-Forecasting-Project

This project presents a comprehensive analysis of retail inventory and sales data to uncover insights that support demand forecasting and inventory optimization. It combines Power BI dashboards, SQL-based analytics, and Excel pivot summaries.

📁 Project Structure
pgsql
Copy
Edit
Retail_Inventory_Forecasting_Project/
├── PowerBI/
│   ├── Inventory_Dashboard.pbix
│   └── dashboard_screenshot.png
│
├── SQL/
│   ├── retail_inventory_forecasting.sql
│   └── Exports/
│       ├── category_summary.csv
│       ├── inventory_value.csv
│       ├── overstocked_items.csv
│       ├── raw_data_export.csv
│       ├── stock_vs_forecast_risk.csv
│       ├── stockout_risk.csv
│       └── top_selling_skus.csv
│
├── Excel/
│   └── inventory_pivots.xlsx
│       ├── Sales_Trend
│       ├── Top_SKUs
│       ├── Stock_vs_Sales
│       └── Raw_Data

🔧 Tools Used
Power BI – for interactive dashboard design and visualization

MySQL Workbench – for querying, cleaning, and analyzing data

Microsoft Excel – for pivot analysis and quick summaries

📊 Key Insights
Top Selling Products identified based on last 30 days’ sales.

Stockout Risk forecasted by comparing inventory vs. predicted demand.

Category-Level Inventory Summary for management-level overview.

Overstocked Items detected by sales-to-stock mismatch.

Pivot Tables to show monthly trends and product-level metrics.

📌 How to Use
Power BI

Open the .pbix file in Power BI Desktop

Interact with filters, KPIs, and visualizations

SQL Scripts

Run retail_inventory_forecasting.sql in MySQL Workbench

Query outputs are saved under the Exports/ folder

Excel

View pivot summaries in inventory_pivots.xlsx

Tabs include sales trend, top SKUs, and inventory vs. sales comparison

🧠 Author
Shreya Kolte
M.S. Data Science – The University of Arizona
GitHub: https://github.com/shreyakolte
