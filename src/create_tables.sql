DROP TABLE IF EXISTS
  Customers,
  Employees,  
  Payments,
  Products,
  Orders
CASCADE;


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


CREATE TABLE Employees (
  id INT PRIMARY KEY NOT NULL, 
  Firstname CHAR(50) NOT NULL, 
  Lastname CHAR(50) NOT NULL, 
  Email CHAR(100), 
  JobTitle CHAR(50)
);


CREATE TABLE Payments (
  id INT PRIMARY KEY NOT NULL, 
  customerid INT REFERENCES customers (id), 
  PaymentDate DATE NOT NULL, 
  Amount DECIMAL NOT NULL
);


CREATE TABLE Products (
  id INT PRIMARY KEY NOT NULL, 
  Productname CHAR(100) NOT NULL, 
  Description CHAR(300) NOT NULL, 
  BuyPrice DECIMAL NOT NULL
);


CREATE TABLE Orders (
  id INT PRIMARY KEY NOT NULL, 
  productid INT REFERENCES Products (id), 
  paymentid INT REFERENCES Payments(id), 
  fulfilledbyemployeeid INT REFERENCES Employees (id), 
  DateRequired DATE NOT NULL, 
  DateShipped DATE, 
  Status CHAR(20)
);

