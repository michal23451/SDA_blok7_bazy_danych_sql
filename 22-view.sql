CREATE OR REPLACE VIEW customer_orders AS
SELECT firstname, lastname, price FROM customers 
	LEFT JOIN orders ON customers.id = orders.customer_id 
    WHERE price > 50;
    
SELECT * FROM customer_orders WHERE price > 100;