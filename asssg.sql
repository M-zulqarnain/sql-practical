create database practical;
use practical
-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20)
);


INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber)
VALUES 
    (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210'),
    (3, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-123-4567'),
    (4, 'Michael', 'Brown', 'michael.brown@example.com', '111-222-3333'),
    (5, 'Emily', 'Wilson', 'emily.wilson@example.com', '444-555-6666'),
    (6, 'David', 'Martinez', 'david.martinez@example.com', '777-888-9999'),
    (7, 'Sarah', 'Anderson', 'sarah.anderson@example.com', '666-777-8888'),
    (8, 'Chris', 'Thomas', 'chris.thomas@example.com', '222-333-4444'),
    (9, 'Jessica', 'Lee', 'jessica.lee@example.com', '999-888-7777'),
    (10, 'Daniel', 'Garcia', 'daniel.garcia@example.com', '333-444-5555'),
    (11, 'Ashley', 'Hernandez', 'ashley.hernandez@example.com', '555-444-3333'),
    (12, 'Matthew', 'Lopez', 'matthew.lopez@example.com', '777-666-5555'),
    (13, 'Jennifer', 'Taylor', 'jennifer.taylor@example.com', '111-999-8888'),
    (14, 'Ryan', 'Martinez', 'ryan.martinez@example.com', '444-333-2222'),
    (15, 'Megan', 'Gonzalez', 'megan.gonzalez@example.com', '888-777-6666'),
    (16, 'Kevin', 'Perez', 'kevin.perez@example.com', '333-666-9999'),
    (17, 'Lauren', 'King', 'lauren.king@example.com', '222-555-8888'),
    (18, 'Justin', 'Scott', 'justin.scott@example.com', '444-777-0000'),
    (19, 'Stephanie', 'Wright', 'stephanie.wright@example.com', '111-555-9999'),
    (20, 'Brandon', 'Harris', 'brandon.harris@example.com', '666-999-3333');

	
	select * from Customers


	-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES 
    (1, 1, '2024-02-17', 150.00),
    (2, 2, '2024-02-16', 200.50),
    (3, 3, '2024-02-15', 75.25),
    (4, 4, '2024-02-14', 100.75),
    (5, 5, '2024-02-13', 300.00),
    (6, 6, '2024-02-12', 50.50),
    (7, 7, '2024-02-11', 180.25),
    (8, 8, '2024-02-10', 90.75),
    (9, 9, '2024-02-09', 120.00),
    (10, 10, '2024-02-08', 250.00),
    (11, 1, '2024-02-07', 80.50),
    (12, 2, '2024-02-06', 45.25),
    (13, 3, '2024-02-05', 150.75),
    (14, 4, '2024-02-04', 175.00),
    (15, 5, '2024-02-03', 200.50),
    (16, 6, '2024-02-02', 60.25),
    (17, 7, '2024-02-01', 300.75),
    (18, 8, '2024-01-31', 95.00),
    (19, 9, '2024-01-30', 180.50),
    (20, 10, '2024-01-29', 210.25);

	select * from Orders


	-- Create the OrderDetails table

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES 
    (1, 1, 101, 2, 25.00),
    (2, 1, 102, 1, 15.50),
    (3, 2, 103, 3, 10.25),
    (4, 2, 104, 2, 20.75),
    (5, 3, 105, 1, 30.00),
    (6, 3, 106, 4, 12.50),
    (7, 4, 107, 2, 18.75),
    (8, 4, 108, 1, 22.00),
    (9, 5, 109, 3, 27.50),
    (10, 5, 110, 2, 17.25),
    (11, 6, 101, 1, 25.00),
    (12, 6, 102, 2, 15.50),
    (13, 7, 103, 2, 10.25),
    (14, 7, 104, 1, 20.75),
    (15, 8, 105, 4, 30.00),
    (16, 8, 106, 3, 12.50),
    (17, 9, 107, 1, 18.75),
    (18, 9, 108, 2, 22.00),
    (19, 10, 109, 3, 27.50),
    (20, 10, 110, 1, 17.25);


	select * from OrderDetails;

	-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    UnitPrice DECIMAL(10, 2),
    InStockQuantity INT
);


INSERT INTO Products (ProductID, ProductName, UnitPrice, InStockQuantity)
VALUES 
    (101, 'T-Shirt', 15.00, 50),
    (102, 'Jeans', 30.00, 30),
    (103, 'Sneakers', 50.00, 20),
    (104, 'Backpack', 40.00, 25),
    (105, 'Watch', 100.00, 15),
    (106, 'Sunglasses', 25.00, 40),
    (107, 'Headphones', 60.00, 10),
    (108, 'Laptop', 800.00, 5),
    (109, 'Smartphone', 700.00, 8),
    (110, 'Tablet', 400.00, 12),
    (111, 'Hoodie', 35.00, 30),
    (112, 'Dress', 45.00, 20),
    (113, 'Shoes', 55.00, 25),
    (114, 'Briefcase', 70.00, 15),
    (115, 'Fitness Tracker', 90.00, 20),
    (116, 'Wireless Earbuds', 80.00, 10),
    (117, 'Desktop Computer', 1200.00, 5),
    (118, 'Printer', 300.00, 8),
    (119, 'External Hard Drive', 150.00, 12),
    (120, 'Keyboard', 50.00, 15);

	SELECT *FROM Products
--3RD
SELECT Customers.FirstName, Customers.LastName, Orders.OrderDate, Orders.TotalAmount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


--4TH

SELECT Products.ProductName, OrderDetails.Quantity, OrderDetails.Quantity * Products.UnitPrice AS TotalPrice
FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Orders.TotalAmount > (SELECT AVG(TotalAmount) FROM Orders);






--6TH
CREATE VIEW OrderSummary AS
SELECT OrderID, OrderDate, CustomerID, TotalAmount
FROM Orders;

SELECT * FROM OrderSummary


--7TH

CREATE VIEW ProductInventory AS
SELECT ProductName , InStockQuantity
FROM Products;

SELECT * FROM ProductInventory


--8TH

SELECT Customers.FirstName, Customers.LastName, OrderSummary.OrderID, OrderSummary.OrderDate, OrderSummary.TotalAmount
FROM OrderSummary
JOIN Customers ON OrderSummary.CustomerID = Customers.CustomerID;






--2ND

CREATE TABLE Stock_Update_Audit (
    AuditID INT  PRIMARY KEY,
    ProductID INT,
    OldQuantity INT,
    NewQuantity INT,
    UpdateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER Update_Stock_Audit
AFTER UPDATE ON Products
FOR EACH ROW
BEGIN
    INSERT INTO Stock_Update_Audit (ProductID, OldQuantity, NewQuantity)
    VALUES (OLD.ProductID, OLD.InStockQuantity, NEW.InStockQuantity);
END //
DELIMITER ;


--5TH
