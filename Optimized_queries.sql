USE LittleLemonDB;

DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
	SELECT MAX(quantity) AS max_quantity
    FROM Orders;
END //

DELIMITER ;

CALL GetMaxQuantity();


PREPARE GetOrderDetail FROM 'SELECT order_id, quantity, total_cost FROM Orders o INNER JOIN Bookings b ON b.Bookings_ID = o.Bookings_ID INNER JOIN Customer_Details cd ON cd.Customer_Details_ID = b.Customer_Details_ID WHERE cd.Customer_Details_ID = ?';
SET @id = 1001;
EXECUTE GetOrderDetail USING @id;

DELIMITER //

CREATE PROCEDURE CancelOrder(IN orderId INT)
BEGIN
    DELETE FROM Orders WHERE order_id = orderId;
END //

DELIMITER ;

CALL CancelOrder(1234);
