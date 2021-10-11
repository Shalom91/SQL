DROP 
  TABLE IF EXISTS Customers;
CREATE TABLE Customers (
  id INT PRIMARY KEY NOT NULL, 
  Firstname CHAR(50) NOT NULL, 
  Lastname CHAR(50) NOT NULL, 
  Gender CHAR, 
  Address CHAR(200) NOT NULL, 
  Phone TEXT, 
  Email CHAR(100), 
  City CHAR(20), 
  Country CHAR(50)
);

DROP 
  TABLE IF EXISTS Employees;
CREATE TABLE Employees (
  id INT PRIMARY KEY NOT NULL, 
  Firstname CHAR(50) NOT NULL, 
  Lastname CHAR(50) NOT NULL, 
  Email CHAR(100), 
  JobTitle CHAR(50)
);

DROP 
  TABLE IF EXISTS Payments;
CREATE TABLE Payments (
  id INT PRIMARY KEY NOT NULL, 
  customerid INT REFERENCES customers (id), 
  PaymentDate DATE NOT NULL, 
  Amount DECIMAL NOT NULL
);

DROP 
  TABLE IF EXISTS Products;
CREATE TABLE Products (
  id INT PRIMARY KEY NOT NULL, 
  Productname CHAR(100) NOT NULL, 
  Description CHAR(300) NOT NULL, 
  BuyPrice DECIMAL NOT NULL
);

DROP 
  TABLE IF EXISTS Orders;
CREATE TABLE Orders (
  id INT PRIMARY KEY NOT NULL, 
  productid INT REFERENCES Products (id), 
  paymentid INT REFERENCES Payments(id), 
  fulfilledbyemployeeid INT REFERENCES Employees (id), 
  DateRequired DATE NOT NULL, 
  DateShipped DATE, 
  Status CHAR(20)
);

INSERT INTO Customers (
  id, FirstName, LastName, Gender, Address, 
  Phone, Email, City, Country
) 
VALUES 
  (
    1, 'John', 'Hibert', 'M', '284 chaucer st', 
    '084789657', 'john@gmail.com', 'Johannesburg', 
    'South Africa'
  ), 
  (
    2, 'Thando', 'Sithole', 'F', '240 Sect 1', 
    '0794445584', 'thando@gmail.com', 
    'Cape Town', 'South Africa'
  ), 
  (
    3, 'Leon', 'Glen', 'M', '81 Everton Rd,Gillits', 
    '0820832830', 'Leon@gmail.com', 
    'Durban', 'South Africa'
  ), 
  (
    4, 'Charl', 'Muller', 'M', '290A Dorset Ecke', 
    '+44856872553', 'Carl.muller@yahoo.com', 
    'Berlin', 'Germany'
  ), 
  (
    5, 'Julia', 'Stein', 'F', '2 Wernerring', 
    '+448672445058', 'Js234@yahoo.com', 
    'Frankfurt', 'Germany'
  );

INSERT INTO Employees (
  id, FirstName, LastName, Email, JobTitle
) 
VALUES 
  (
    1, 'Kani', 'Matthew', 'mat@gmail.com', 
    'Manager'
  ), 
  (
    2, 'Lesly', 'Cronje', 'LesC@gmail.com', 
    'Clerk'
  ), 
  (
    3, 'Gideon', 'Maduku', 'm@gmail.com', 
    'Accountant'
  );

INSERT INTO Payments (
  id, customerid, PaymentDate, Amount
) 
VALUES 
  (1, 1, '01-09-2018', 150.75), 
  (2, 5, '03-09-2018', 150.75), 
  (3, 4, '03-09-2018', 700.60);

INSERT INTO Products (
  id, ProductName, Description, BuyPrice
) 
VALUES 
  (
    1, 'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', 
    150.75
  ), 
  (
    2, 'Classic Car', 'Turnable front wheels, steering function', 
    550.75
  ), 
  (
    3, 'Sports car', 'Turnable front wheels, steering function', 
    700.60
  );
  
INSERT INTO Orders (
  id, productid, paymentid, fulfilledbyemployeeid, 
  DateRequired, DateShipped, Status
) 
VALUES 
  (
    1, 1, 1, 2, '05-09-2018', NULL, 'Not shipped'
  ), 
  (
    2, 1, 2, 2, '04-09-2018', '03-09-2018', 
    'Shipped'
  ), 
  (
    3, 3, 3, 3, '06-09-2018', NULL, 'Not shipped'
  );
