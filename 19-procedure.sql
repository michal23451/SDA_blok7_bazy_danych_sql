USE bank;

SELECT * FROM customers;
CALL getOrdersForCustomer(1);

delimiter //
CREATE PROCEDURE getOrdersForCustomer(IN id INT)
BEGIN
	SELECT firstname, lastname, order_date, price FROM customers
    JOIN orders ON customers.id = orders.customer_id
    WHERE customers.id = id;
    SELECT * FROM workers;
END
delimiter ;