# Instructions
## Part 1: Creating a database

Save all of your instructions in a script file - you will submit this file on Gnomio and github.

- Create a database called “Umuzi”.

- Create the following tables in the Umuzi database:

    - Customers
    - Employees
    - Orders
    - Payments
    - Products
    
- Create a primary key for each table with auto-increment (make sure you correctly specify the data types, e.g. the ID field should be int).

- Create foreign keys so that every ID in the order table references an existing ID in the tables referenced (e.g., ProductID, EmployeeID, etc).

- INSERT the records in the tables below into the table you created in step 2.

- Document what information is stored in your database. Be sure to say what information is kept in what table, and which keys link the records between tables.

# Part 2: Querying a database
Save all of your instructions in a script file - you will submit this file on Gnomio and github.

- SELECT ALL records from table Customers.

- SELECT records only from the name column in the Customers table.

- Show the name of the Customer whose CustomerID is 1.

- UPDATE the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.

- DELETE the record from the Customers table for customer 2 (CustomerID = 2).

- Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.

- Return the MAXIMUM payment made on the PAYMENTS table.

- Select all customers from the “Customers” table, sorted by the “Country” column.

- Select all products with a price BETWEEN R100 and R600.

- Select all fields from “Customers” where country is “Germany” AND city is “Berlin”.

- Select all fields from “Customers” where city is “Cape Town” OR “Durban”.

- Select all records from Products where the Price is GREATER than R500.

- Return the sum of the Amounts on the Payments table.

- Count the number of shipped orders in the Orders table.

- Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).

- Using INNER JOIN create a query that selects all Payments with Customer information.

- Select all products that have turnable front wheels.
