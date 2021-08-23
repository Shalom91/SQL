# Database Documentation
## Database Name: Shop

 - run scripts with `docker-compose up` in your terminal

 ### Tables and columns
    ------------|--------------------
    Customers   | Columns
    ------------|--------------------            
                | id(int)
                | FisrtName(varchar)
                | LastName(varchar)
                | Gender(varchar)
                | Address(varchar)
                | Phone(text)
                | Email(varchar)
                | City(varchar)
                | Country(varchar)
    ------------|--------------------
    Employees   | Columns
    ------------|--------------------            
                | id (int)
                | FirstName (varchar)
                | LastName (varchar)
                | Email (varchar)
                | JobTitle (varchar)
    ------------|--------------------
     Payments   | Coulmns
    ---------------------------------
                | id (int)
                | customerid (int) fk
                | PaymentDate (datetime)
                | Amount (decimal)
    ------------|----------------------
    Products   | Columns
    ------------|----------------------
                | id (int)
                | ProductName (varchar)
                | Description (varchar)
                | BuyPrice (decimal)
    ------------|----------------------
    Orders      | Columns
    ------------|----------------------
                | id (int)
                | ProductID (int) fk
                | PaymentID (int) fk
                | FulfilledByEmployeeID (int) fk
                | DateRequired (datetime)
                | DateShipped (datetime)
                | Status (varchar)