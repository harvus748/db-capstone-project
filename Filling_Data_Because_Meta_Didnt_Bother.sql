INSERT INTO Customer_Details (Customer_Details_ID, Customer_Name, Contact_Details)
VALUES
  (1001, 'John Doe', 'john.doe@example.com'),
  (1002, 'Jane Smith', 'jane.smith@example.com'),
  (1003, 'Michael Johnson', 'michael.johnson@example.com'),
  (1004, 'Emily Davis', 'emily.davis@example.com'),
  (1005, 'David Wilson', 'david.wilson@example.com'),
  (1006, 'Sarah Thompson', 'sarah.thompson@example.com'),
  (1007, 'Christopher Anderson', 'christopher.anderson@example.com'),
  (1008, 'Jessica Martinez', 'jessica.martinez@example.com'),
  (1009, 'Matthew Taylor', 'matthew.taylor@example.com'),
  (1010, 'Olivia Thomas', 'olivia.thomas@example.com'),
  (1011, 'Daniel Hernandez', 'daniel.hernandez@example.com'),
  (1012, 'Sophia Moore', 'sophia.moore@example.com'),
  (1013, 'Andrew Clark', 'andrew.clark@example.com'),
  (1014, 'Isabella Lewis', 'isabella.lewis@example.com'),
  (1015, 'Joseph Lee', 'joseph.lee@example.com'),
  (1016, 'Mia Walker', 'mia.walker@example.com'),
  (1017, 'William Hall', 'william.hall@example.com'),
  (1018, 'Ava Young', 'ava.young@example.com'),
  (1019, 'Alexander Allen', 'alexander.allen@example.com'),
  (1020, 'Ella Green', 'ella.green@example.com');
INSERT INTO Staff_Information (Staff_Information_ID, Role, Salary)
VALUES
  (2001, 'Manager', 5000.00),
  (2002, 'Server', 2500.00),
  (2003, 'Chef', 4000.00),
  (2004, 'Bartender', 3000.00),
  (2005, 'Host/Hostess', 2000.00),
  (2006, 'Server', 2500.00),
  (2007, 'Chef', 4000.00),
  (2008, 'Server', 2500.00),
  (2009, 'Server', 2500.00),
  (2010, 'Bartender', 3000.00),
  (2011, 'Server', 2500.00),
  (2012, 'Chef', 4000.00),
  (2013, 'Server', 2500.00),
  (2014, 'Server', 2500.00),
  (2015, 'Bartender', 3000.00), 
  (2016, 'Server', 2500.00),
  (2017, 'Chef', 4000.00),
  (2018, 'Server', 2500.00),
  (2019, 'Server', 2500.00),
  (2020, 'Bartender', 3000.00);
INSERT INTO Bookings (Bookings_ID, Date, Table_Number, Customer_Details_ID, Staff_Information_ID)
VALUES
  (1, '2022-01-01', 1, 1001, 2001),
  (2, '2022-01-02', 2, 1002,2002),
  (3, '2022-01-03', 3, 1003,2003),
  (4, '2022-01-04', 4, 1004, 2004),
  (5, '2022-01-05', 5, 1005,2005),
  (6, '2022-01-06', 6, 1006,2006),
  (7, '2022-01-07', 7, 1007,2007),
  (8, '2022-01-08', 8, 1008, 2008),
  (9, '2022-01-09', 9, 1009, 2009),
  (10, '2022-01-10', 10, 1010, 2010),
  (11, '2022-01-11', 11, 1011, 2011),
  (12, '2022-01-12', 12, 1012, 2012),
  (13, '2022-01-13', 13, 1013, 2013),
  (14, '2022-01-14', 14, 1014, 2014),
  (15, '2022-01-15', 15, 1015, 2015),
  (16, '2022-01-16', 16, 1016, 2016),
  (17, '2022-01-17', 17, 1017, 2017),
  (18, '2022-01-18', 18, 1018, 2018),
  (19, '2022-01-19', 19, 1019, 2019),
  (20, '2022-01-20', 20, 1020, 2020);
INSERT INTO Menu (Menu_ID, Cuisine, Starters, Courses, Drinks, Desserts)
VALUES
  (1, 'Italian', 'Bruschetta', 'Pasta Carbonara', 'Red Wine', 'Tiramisu'),
  (2, 'Mexican', 'Guacamole', 'Enchiladas', 'Margarita', 'Churros'),
  (3, 'Indian', 'Samosa', 'Butter Chicken', 'Mango Lassi', 'Gulab Jamun'),
  (4, 'Chinese', 'Spring Rolls', 'Kung Pao Chicken', 'Jasmine Tea', 'Fortune Cookies'),
  (5, 'Japanese', 'Miso Soup', 'Sushi', 'Green Tea', 'Matcha Ice Cream'),
  (6, 'Greek', 'Tzatziki', 'Moussaka', 'Ouzo', 'Baklava'),
  (7, 'Thai', 'Tom Yum Soup', 'Pad Thai', 'Thai Iced Tea', 'Mango Sticky Rice'),
  (8, 'French', 'Escargots', 'Coq au Vin', 'Champagne', 'Crème Brûlée'),
  (9, 'Spanish', 'Patatas Bravas', 'Paella', 'Sangria', 'Flan'),
  (10, 'American', 'Buffalo Wings', 'Cheeseburger', 'Coca-Cola', 'Apple Pie'),
  (11, 'Korean', 'Kimchi', 'Bibimbap', 'Soju', 'Bingsu'),
  (12, 'Lebanese', 'Hummus', 'Shawarma', 'Arak', 'Baklava'),
  (13, 'Vietnamese', 'Fresh Spring Rolls', 'Pho', 'Vietnamese Iced Coffee', 'Che Chuoi'),
  (14, 'Brazilian', 'Coxinha', 'Feijoada', 'Caipirinha', 'Brigadeiro'),
  (15, 'Thai', 'Tom Yum Soup', 'Pad Thai', 'Thai Iced Tea', 'Mango Sticky Rice'),
  (16, 'French', 'Escargots', 'Coq au Vin', 'Champagne', 'Crème Brûlée'),
  (17, 'Spanish', 'Patatas Bravas', 'Paella', 'Sangria', 'Flan'),
  (18, 'American', 'Buffalo Wings', 'Cheeseburger', 'Coca-Cola', 'Apple Pie'),
  (19, 'Korean', 'Kimchi', 'Bibimbap', 'Soju', 'Bingsu'),
  (20, 'Lebanese', 'Hummus', 'Shawarma', 'Arak', 'Baklava');
  
INSERT INTO Order_Delivery_Status (Order_Delivery_Status_ID, Status, Delivery_Date)
VALUES
  (1, 'Pending', '2022-01-01'),
  (2, 'Delivered', '2022-01-02'),
  (3, 'Pending', '2022-01-03'),
  (4, 'Delivered', '2022-01-04'),
  (5, 'Pending', '2022-01-05'),
  (6, 'Delivered', '2022-01-06'),
  (7, 'Pending', '2022-01-07'),
  (8, 'Delivered', '2022-01-08'),
  (9, 'Pending', '2022-01-09'),
  (10, 'Delivered', '2022-01-10'),
  (11, 'Pending', '2022-01-11'),
  (12, 'Delivered', '2022-01-12'),
  (13, 'Pending', '2022-01-13'),
  (14, 'Delivered', '2022-01-14'),
  (15, 'Pending', '2022-01-15'),
  (16, 'Delivered', '2022-01-16'),
  (17, 'Pending', '2022-01-17'),
  (18, 'Delivered', '2022-01-18'),
  (19, 'Pending', '2022-01-19'),
  (20, 'Delivered', '2022-01-20');
  
INSERT INTO Orders (Order_ID, Bookings_ID, Order_Delivery_Status_ID, Menu_ID, Order_Date, Quantity, Total_Cost)
VALUES
  (1, 1, 1, 1, '2022-01-01', 2, 50.00),
  (2, 2, 2, 2, '2022-01-02', 1, 25.00),
  (3, 3, 1, 3, '2022-01-03', 4, 100.00),
  (4, 4, 2, 4, '2022-01-04', 3, 75.00),
  (5, 5, 1, 5, '2022-01-05', 2, 50.00),
  (6, 6, 2, 6, '2022-01-06', 1, 25.00),
  (7, 7, 1, 7, '2022-01-07', 4, 100.00),
  (8, 8, 2, 8, '2022-01-08', 3, 75.00),
  (9, 9, 1, 9, '2022-01-09', 2, 50.00),
  (10, 10, 2, 10, '2022-01-10', 1, 25.00),
  (11, 11, 1, 11, '2022-01-11', 4, 100.00),
  (12, 12, 2, 12, '2022-01-12', 3, 75.00),
  (13, 13, 1, 13, '2022-01-13', 2, 50.00),
  (14, 14, 2, 14, '2022-01-14', 1, 25.00),
  (15, 15, 1, 15, '2022-01-15', 4, 100.00),
  (16, 16, 2, 16, '2022-01-16', 3, 75.00),
  (17, 17, 1, 17, '2022-01-17', 2, 50.00),
  (18, 18, 2, 18, '2022-01-18', 1, 25.00),
  (19, 19, 1, 19, '2022-01-19', 4, 100.00),
  (20, 20, 2, 20, '2022-01-20', 3, 75.00);




  

  
  
