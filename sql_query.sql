SELECT * FROM customers;

SELECT firstname, lastname FROM customers;

SELECT firstname, lastname FROM customers WHERE id = 1;

UPDATE customers SET firstname = 'Lerato', lastname = 'Mabitso'
WHERE id = 1;

DELETE FROM customers WHERE id = 2;

SELECT 
    status,
    COUNT(status) AS status_count
FROM
    orders
GROUP BY
    status
ORDER BY
    status_count DESC;

SELECT MAX(amount) AS largest_payment FROM payments;

SELECT * FROM customers ORDER BY country;

SELECT productname, buyprice AS poduct_price_between_100_and_600 FROM products WHERE buyprice BETWEEN 100 AND 600;

SELECT * FROM customers WHERE country = 'Germany' AND city = 'Berlin';

SELECT *  FROM customers WHERE city = 'Cape Town' OR city = 'Durban';

SELECT * FROM products WHERE buyprice > 500;

SELECT SUM(amount) AS total_payments FROM payments;

SELECT 
    status,
    COUNT(status) AS Count_Shipped_Orders
FROM
    orders
WHERE status = 'Shipped'
GROUP BY
    status;

SELECT ROUND(AVG(buyprice)::numeric, 2) AS the_average_price_in_rands, 
ROUND(AVG(buyprice/12)::numeric, 2) AS the_average_price_in_dollars 
FROM products;


SELECT * FROM payments
INNER JOIN customers ON customers.id = payments.id;

SELECT * FROM products WHERE description LIKE 'Turnable front wheel%';


