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
INSERT INTO Products VALUES(3, 'Sports car', 'Turnable front wheels', 'steering function', 700.60)

