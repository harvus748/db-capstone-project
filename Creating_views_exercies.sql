CREATE VIEW OrdersView AS (
SELECT Order_ID, Quantity, Total_Cost
FROM Orders
WHERE Quantity > 2
)
;
SELECT cd.Customer_Details_ID, cd.Customer_Name, o.Order_ID, o.Total_Cost, Cuisine, Courses
FROM Customer_Details cd
INNER JOIN Bookings b ON cd.Customer_Details_ID = b.Customer_Details_ID
INNER JOIN Orders o ON o.Bookings_ID = b.Bookings_ID
INNER JOIN Menu m ON m.Menu_ID = o.Menu_ID;

WITH cte AS (
SELECT COUNT(Cuisine) as count, Cuisine
FROM Menu
GROUP BY Cuisine
HAVING COUNT(Cuisine) >= 2)
SELECT * from cte ;