USE bank;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
START TRANSACTION;
SELECT * FROM customers;
INSERT INTO customers(firstname, lastname) VALUES ('Jan', 'Zawadzki');
UPDATE customers SET firstname = "Michal";
ROLLBACK;