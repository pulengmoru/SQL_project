CREATE TABLE Customers(

    CustomerID SERIAL PRIMARY KEY,
    FirstName varchar(50),
    LastName varchar(50),
    Gender varchar,
    Address varchar(200),
    Phone bigint,
    Email varchar(100),
    City varchar(20),
    Country varchar(50)
);


CREATE TABLE Emloyees(
    EmployeeID SERIAL PRIMARY KEY,
    FirstName varchar(50),
    LastName varchar(50),
    Address varchar(200),
    Email varchar(100),
    JobTitle varchar(20)
    FOREIGN KEY(EmployeeID) REFERENCES Orders(OrderId)
);

INSERT INTO Employees VALUES(1,'Kani', 'Matthew', 'mat@gmail.com', 'Manager');
INSERT INTO Employees VALUES(2,'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk');
INSERT INTO Employees VALUES(3,'Gideon', 'Maduku', 'm@gmail.com', 'Accountant')

CREATE TABLE Orders(
    OrderId SERIAL PRIMARY KEY,
    ProductID int,
    PaymentID int,
    FulfilledByEmployeeID int,
    DateRequired timestamp,
    DateShipped timestamp,
    Status varchar(20),
);

CREATE TABLE Payments(
    CustomerId SERIAL PRIMARY KEY,
    PaymentID int,
    PaymentDate timestamp,
    Amount decimal,
    FOREIGN KEY(PaymentID) REFERENCES Orders(OrderId)
);

CREATE TABLE Products(
    ProductID SERIAL PRIMARY KEY,
    ProductName varchar(100),
    Description varchar(300),
    BuyPrice decimal,
    FOREIGN KEY(ProductID) REFERENCES Orders(OrderId)
);