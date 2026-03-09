CREATE DATABASE tesla_project;

USE tesla_project;

CREATE TABLE tesla_orders (
Order_ID INT,
Warehouse_Zone VARCHAR(5),
Picker_ID VARCHAR(10),
Items_Picked INT,
Processing_Time_Minutes INT,
Errors INT,
Shift VARCHAR(10),
Day_of_Week VARCHAR(15)
);

SELECT
AVG(Processing_Time_Minutes) AS avg_processing_time
FROM tesla_orders;

SELECT
Warehouse_Zone,
SUM(Errors) AS total_errors
FROM tesla_orders
GROUP BY Warehouse_Zone
ORDER BY total_errors DESC;

SELECT
Day_of_Week,
COUNT(*) AS orders_processed
FROM tesla_orders
GROUP BY Day_of_Week;

SELECT
Picker_ID,
AVG(Processing_Time_Minutes) AS avg_time
FROM tesla_orders
GROUP BY Picker_ID
ORDER BY avg_time DESC;