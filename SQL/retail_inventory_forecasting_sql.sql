CREATE DATABASE retail_store_inventory;
USE retail_store_inventory;

# create table products
CREATE TABLE products (
	product_id int PRIMARY KEY, 
    product_name VARCHAR(100), 
    category VARCHAR(50)
    );

# create table inventory
CREATE TABLE inventory (
	inventory_id INT PRIMARY KEY AUTO_INCREMENT, 
    product_id INT, 
    inventory_date DATE, 
    inventory_level INT, 
    FOREIGN KEY (product_id) REFERENCES products(product_id)
    );

# create table sales
CREATE TABLE sales (
	sales_id INT PRIMARY KEY AUTO_INCREMENT, 
    product_id INT, 
    sale_date DATE, 
    units_sold INT, 
    FOREIGN KEY (product_id) REFERENCES products(product_id)
    );

CREATE TABLE raw_data (
    SKU_ID VARCHAR(20),
    SKU_Name VARCHAR(100),
    Category VARCHAR(50),
    Subcategory VARCHAR(50),
    Current_Stock INT,
    Sales_Last_30_Days INT,
    Forecast_30_Days INT,
    Supplier VARCHAR(100),
    Price DECIMAL(10,2)
);

SHOW TABLES;

SELECT COUNT(*) FROM raw_data;
#  1. Top Selling SKUs
 SELECT SKU_Name, Sales_Last_30_Days
FROM raw_data
ORDER BY Sales_Last_30_Days DESC
LIMIT 10;

 # 2. SKUs At Risk of Stock Out
SELECT SKU_Name, Current_Stock, Forecast_30_Days
FROM raw_data
WHERE Forecast_30_Days > Current_Stock;

 # 3. Total Inventory Value
 SELECT SUM(Current_Stock * Price) AS total_inventory_value
FROM raw_data;

# create table sales trend 
CREATE TABLE sales_trend (
    Date DATE,
    SKU_ID VARCHAR(20),
    Units_Sold INT
);

# create table top_skus
CREATE TABLE top_skus (
    SKU_ID VARCHAR(20),
    SKU_Name VARCHAR(100),
    Category VARCHAR(50),
    Total_Sales INT
);

# create table stock_vs_sales
CREATE TABLE stock_vs_sales (
    SKU_ID VARCHAR(20),
    SKU_Name VARCHAR(100),
    Current_Stock INT,
    Total_Sales_Last_30_Days INT
);

# SQL Queries for Analysis

# A. Category-Wise Inventory Summary
SELECT Category, 
       COUNT(*) AS total_skus,
       SUM(Current_Stock) AS total_stock,
       SUM(Sales_Last_30_Days) AS total_sales
FROM raw_data
GROUP BY Category;

# B. Stock vs Forecast Risk
SELECT SKU_Name, Current_Stock, Forecast_30_Days,
       (Forecast_30_Days - Current_Stock) AS deficit
FROM raw_data
WHERE Forecast_30_Days > Current_Stock;
SELECT * FROM raw_data LIMIT 20;

#C. Overstocked Items (Slow Movers)
SELECT SKU_Name, Current_Stock, Sales_Last_30_Days
FROM raw_data
WHERE Current_Stock > 3 * Sales_Last_30_Days;

SELECT COUNT(*) FROM raw_data;
SELECT DATABASE();
SELECT * FROM raw_data LIMIT 5;

TRUNCATE TABLE raw_data;
