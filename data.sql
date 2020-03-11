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

INSERT INTO Customers VALUES(1,'John', 'Hibert', 'Male', '284 chaucer st', '084789657','john@gmail.com', 'Johannesburg', 'South Africa');
INSERT INTO Customers VALUES(2,'Thando', 'Sithole', 'Female', '240 Sect 1', '0794445584', 'thando@gmail.com', 'Cape Town', 'South Africa');
INSERT INTO Customers VALUES(3,'Leon', 'Glen', 'Male', '81 Everton Rd,Gillits', '0820832830', 'Leon@gmail.com', 'Durban', 'South Africa');
INSERT INTO Customers VALUES(4,'Charl', 'Muller', 'Male', '290A Dorset Ecke', '+44856872553', 'Charl.muller@yahoo.com', 'Berlin', 'Germany');
INSERT INTO Customers VALUES(5,'Julia', 'Stein', 'Female', '2 Wernerring', '+448672445058', 'Js234@yahoo.com', 'Frankfurt', 'Germany')



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

INSERT INTO Orders VALUES(1, 1, 1, 2, '05-09-2018', 'Nul', 'Not shipped');
INSERT INTO Orders VALUES(2,	1, 2, 2, '04-09-2018', '03-09-2018', 'Shipped');
INSERT INTO Orders VALUES(3, 3, 3, 3, '06-09-2018','Nul', 'Not shipped')

CREATE TABLE Payments(
    CustomerId SERIAL PRIMARY KEY,
    PaymentID int,
    PaymentDate timestamp,
    Amount decimal,
    FOREIGN KEY(PaymentID) REFERENCES Orders(OrderId)
);

INSERT INTO Payments VALUES(1, 1, '01-09-2018', 150.75);
INSERT INTO Payments VALUES(5, 2, '03-09-2018', 150.75);
INSERT INTO Payments VALUES(4, 3, '03-09-2018', 700.60)

CREATE TABLE Products(
    ProductID SERIAL PRIMARY KEY,
    ProductName varchar(100),
    Description varchar(300),
    BuyPrice decimal,
    FOREIGN KEY(ProductID) REFERENCES Orders(OrderId)
);

INSERT INTO Products VALUES(1, 'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', 150.75);
INSERT INTO Products VALUES(2, 'Classic Car', 'Turnable front wheels, steering function', 550.75);
INSERT INTO Products VALUES(3, 'Sports car', 'Turnable front wheels, steering function', 700.60)

#Part 2: Querying a database

# 1.SELECT ALL records from table Customers.
SELECT * FROM Customers;

#2. SELECT records only from the name column in the Customers table.
SELECT FirstName FROM Customers;

#3. Show the name of the Customer whose CustomerID is 1.
SELECT FirstName FROM Customers
WHERE CustomerID = 1

#4. UPDATE the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.

#5. DELETE the record from the Customers table for customer 2 (CustomerID = 2).

Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.

Return the MAXIMUM payment made on the PAYMENTS table.

Select all customers from the “Customers” table, sorted by the “Country” column.

Select all products with a price BETWEEN R100 and R600.

Select all fields from “Customers” where country is “Germany” AND city is “Berlin”.

Select all fields from “Customers” where city is “Cape Town” OR “Durban”.

Select all records from Products where the Price is GREATER than R500.

Return the sum of the Amounts on the Payments table.

Count the number of shipped orders in the Orders table.

Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).

Using INNER JOIN create a query that selects all Payments with Customer information.

Select all products that have turnable front wheels.