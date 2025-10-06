-- This SQL query extracts the month from the OrderDate column in the Online_Sales table.
SELECT
    CAST(strftime('%m', OrderDate) AS INTEGER) AS month
FROM Online_Sales;

-- This SQL query extracts both the year and month from the OrderDate column in the Online_Sales table.
SELECT
    CAST(strftime('%Y', OrderDate) AS INTEGER) AS year,
    CAST(strftime('%m', OrderDate) AS INTEGER) AS month
FROM Online_Sales
GROUP BY year, month;

-- This SQL query calculates the total revenue from the Online_Sales table.
SELECT
    SUM(Revenue) AS total_revenue
FROM Online_Sales;

-- This SQL query counts the distinct number of orders in the Online_Sales table.
SELECT
    COUNT(DISTINCT OrderNumber) AS order_volume
FROM Online_Sales;

-- This SQL query retrieves the OrderNumber, OrderDate, and Revenue from the Online_Sales table, ordered by OrderDate from oldest to newest.
SELECT
    OrderNumber,
    OrderDate,
    Revenue
FROM Online_Sales
ORDER BY OrderDate ASC;  -- Oldest to newest

-- This SQL query retrieves all records from the Online_Sales table for the year 2018.
SELECT *
FROM Online_Sales
WHERE OrderDate BETWEEN '2018-01-01' AND '2018-12-31';
