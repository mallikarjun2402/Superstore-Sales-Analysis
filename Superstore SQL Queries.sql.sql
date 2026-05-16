use sales;
SELECT COUNT(*) FROM orders;
SELECT * FROM orders LIMIT 5;
SELECT Region, 
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM orders
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT Category,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT Product_Name,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM orders
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT State,
       COUNT(Order_ID) AS Total_Orders
FROM orders
GROUP BY State
ORDER BY Total_Orders DESC
LIMIT 10;
SELECT 
    CASE 
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount <= 0.2 THEN 'Low Discount'
        WHEN Discount <= 0.4 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS Discount_Level,
    ROUND(AVG(Profit), 2) AS Avg_Profit,
    COUNT(Order_ID) AS Total_Orders
FROM orders
GROUP BY Discount_Level
ORDER BY Avg_Profit DESC;