# Excel Analysis – Inventory Demand Forecasting

This folder contains the Excel-based analysis for the Inventory Demand Forecasting and Optimization project. The goal is to analyze product movement across stores and determine when stock replenishment is necessary.

---

## 📊 Key Analyses Performed

- **Data Cleaning**  
  - Converted `dd-mm-yyyy` text dates into Excel-recognized formats for time-based analysis

- **Sales Trend Analysis**  
  - Created a PivotTable to visualize monthly units sold

- **Top-Selling Products**  
  - Identified best-performing SKUs using total sales volume

- **Stock vs Sales Comparison**  
  - Compared available inventory with units sold per product

- **Reorder Flag**  
  - Implemented a custom logic to flag products needing restocking  
    - Formula: `IF(inventory_level < units_sold * 7, "REORDER", "OK")`

---

## 📁 File Included

- `retail_inventory_forecasting_excel.xlsx`  
  Contains all PivotTables, formulas, and cleaned data

---

## 🛠️ Tools Used

- Microsoft Excel
  - PivotTables
  - Conditional Formatting
  - VLOOKUP (planned)
  - Custom formulas

---

## ✅ Next Steps
- Integrate SQL queries for deeper relational insights
- Build Power BI dashboard to visualize KPIs and reorder risk
