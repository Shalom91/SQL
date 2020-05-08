SELECT * FROM customers;

SELECT firstname, lastname FROM customers;

SELECT firstname, lastname FROM customers WHERE customerid = 1;

UPDATE customers SET firstname = 'Lerato', lastname = 'Mabitso'
WHERE customerid = 1;

DELETE FROM customers WHERE customerid = 2;

SELECT COUNT(DISTINCT status) FROM orders;

SELECT MAX(amount) FROM payments;

SELECT * FROM customers ORDER BY country;

SELECT productname FROM products WHERE buyprice BETWEEN 100 AND 600;

SELECT * FROM customers WHERE country = 'Germany' AND city = 'Berlin';

SELECT * FROM customers WHERE city = 'Cape Town' OR city = 'Durban';

SELECT * FROM products WHERE buyprice > 500;

SELECT SUM(amount) FROM payments;

SELECT COUNT(status) FROM orders WHERE status = 'Shipped';

SELECT AVG(buyprice) FROM products;

SELECT AVG(buyprice/12) FROM products;

SELECT paymentid, firstname, lastname, amount FROM payments
INNER JOIN customers ON customers.customerid = payments.customerid;

SELECT * FROM products WHERE description LIKE 'Turnable front wheel%';


