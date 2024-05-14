DELIMITER //

CREATE PROCEDURE CheckBooking(IN Date DATE, IN Table_Number INT)
BEGIN
    DECLARE bookingCount INT;
    
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE Date = Date AND Table_Number = Table_Number;
    
    IF bookingCount > 0 THEN
        SELECT 'Table is already booked' AS Status;
    ELSE
        SELECT 'Table is available' AS Status;
    END IF;
END //

DELIMITER ; 

CALL CheckBooking('2022-10-10', 5);

DELIMITER //

CREATE PROCEDURE AddValidBooking(IN Date DATE, IN Table_Number INT)
BEGIN
    DECLARE bookingCount INT;
    
    START TRANSACTION;
    
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE Date = Date AND Table_Number = Table_Number;
    
    IF bookingCount > 0 THEN
        ROLLBACK;
        SELECT 'Table is already booked under another name. Booking declined.' AS Status;
    ELSE
        INSERT INTO Bookings (Date, Table_Number)
        VALUES (Date, Table_Number);
        COMMIT;
        SELECT 'Booking successful.' AS Status;
    END IF;
END //

DELIMITER ;

CALL AddValidBooking('2022-12-17', 6);

DELIMITER //

CREATE PROCEDURE AddBooking(IN Bookings_ID INT, IN Customer_ID INT, IN Date DATE, IN Table_Number INT, IN Staff_Information_ID INT)
BEGIN
    INSERT INTO Bookings (Bookings_ID, Customer_ID, DATE, Table_Number, Staff_Information_ID)
    VALUES (Bookings_ID, Customer_ID, DATE, Table_Number, Staff_Information_ID);
END//

DELIMITER ;

CALL AddBooking(1, 1, '2022-10-10', 5, 7);

DELIMITER //

CREATE PROCEDURE UpdateBooking(IN Bookings_ID INT, IN Date DATE)
BEGIN
    UPDATE Bookings
    SET Date = Date
    WHERE Bookings_ID = Bookings_ID;
END //

DELIMITER ;

CALL UpdateBooking(1, '2022-10-15');


DELIMITER //

CREATE PROCEDURE CancelBooking(IN Bookings_ID INT)
BEGIN
    DELETE FROM Bookings
    WHERE Bookings_ID = Bookings_ID;
END //

DELIMITER ;

CALL CancelBooking(1);






