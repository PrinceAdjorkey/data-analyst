create database  ECCOMERCE;
USE ECCOMERCE;
-- Users Table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    CreatedAt DATE
);




-- Categories Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2),
    Stock INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    UserID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Order_Items Table
CREATE TABLE Order_Items (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Payments Table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaidAmount DECIMAL(10, 2),
    PaymentDate DATETIME,
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert Users
INSERT INTO Users VALUES
(1, 'John Doe', 'john@example.com', '1234567890', '123 Main St', '2024-01-10'),
(2, 'Jane Smith', 'jane@example.com', '9876543210', '456 Maple Ave', '2024-02-20');
select*
FROM Users;

-- Insert Categories
INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing');

select*
FROM Categories;




-- Insert Products
INSERT INTO Products VALUES
(1, 'Smartphone', 699.99, 50, 1),
(2, 'Bluetooth Headphones', 129.99, 100, 1),
(3, 'Novel - The Great Gatsby', 19.99, 200, 2),
(4, 'T-Shirt', 14.99, 150, 3);

select*
FROM Products;


-- Insert Orders
INSERT INTO Orders VALUES
(1, 1, '2024-04-10 10:30:00', 849.97, 'Delivered'),
(2, 2, '2024-04-11 15:45:00', 34.98, 'Shipped');

-- Insert Order_Items
INSERT INTO Order_Items VALUES
(1, 1, 1, 1, 699.99),
(2, 1, 2, 1, 129.99),
(3, 2, 3, 1, 19.99),
(4, 2, 4, 1, 14.99);

-- Insert Payments
INSERT INTO Payments VALUES
(1, 1, 849.97, '2024-04-10 11:00:00', 'Credit Card'),
(2, 2, 34.98, '2024-04-11 16:00:00', 'PayPal');
