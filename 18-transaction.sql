USE bank;

SELECT * FROM customers;

START TRANSACTION;
INSERT INTO customers (firstname, lastname) VALUES 
	('Adam', 'Wąs'),
	('Michał', 'Głuś');

SELECT * FROM customers;
COMMIT;

START TRANSACTION;
UPDATE customers SET firstname = 'Michal';
SELECT * FROM customers;
ROLLBACK;