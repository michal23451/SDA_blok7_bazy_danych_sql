CREATE DATABASE bank;
USE bank;

SELECT * FROM customers;
SELECT * FROM orders;

SELECT firstname, lastname, order_date, price FROM customers 
	JOIN orders ON customers.id = orders.customer_id;
    
SELECT c.id, firstname, lastname, order_date, price 
	FROM customers AS c
	JOIN orders AS o
    ON c.id = o.customer_id;
    
-- wyświetlić imię i nazwisko klientów wraz z sumą ceny ich zamówień
SELECT firstname, lastname, SUM(price) AS total_price FROM customers JOIN orders
	ON customers.id = orders.customer_id
    GROUP BY customers.id;

SELECT firstname, lastname, order_date, price AS total_price FROM customers LEFT JOIN orders
	ON customers.id = orders.customer_id;
    
SELECT firstname, lastname, order_date, price AS total_price FROM customers RIGHT JOIN orders
	ON customers.id = orders.customer_id;
    
SELECT * FROM customers;
SELECt * FROM workers;

SELECT firstname, lastname FROM customers
	UNION ALL SELECT firstname, lastname FROM workers;
    
SELECT firstname, lastname, order_date, price FROM customers 
	LEFT JOIN orders ON customers.id = orders.customer_id
	UNION SELECT firstname, lastname, order_date, price FROM customers
	RIGHT JOIN orders ON customers.id = orders.customer_id;





    