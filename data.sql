CREATE TABLE Customers (
    CustomerID int PRIMARY KEY,
    FirstName varchar (50),
    LastName varchar (50),
    Gender varchar,
    Address varchar (200),
    Phone bigint,
    Email varchar (100));

INSERT INTO Customers VALUES(1,'Kani', 'Matthew', 'mat@gmail.com', 'Manager')
INSERT INTO Customers VALUES(2,'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk')
INSERT INTO Customers VALUES(3,'Gideon', 'Maduku', 'm@gmail.com', 'Accountant')

