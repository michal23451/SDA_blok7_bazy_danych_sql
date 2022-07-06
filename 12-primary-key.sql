CREATE TABLE customers(
	id INT,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    PRIMARY KEY(id)
);

DESC customers;

ALTER TABLE customers DROP PRIMARY KEY;
ALTER TABLE customers ADD PRIMARY KEY(id);

-- dodać 2 wpisy do tabeli
INSERT INTO customers VALUES (1, 'Bożena', 'Banaś'), (2, 'Adam', 'Bąk');
SELECT * FROM customers;

ALTER TABLE customers MODIFY COLUMN id INT AUTO_INCREMENT;

-- dodać 4 wpisy do tabeli nie podając id
INSERT INTO customers(firstname, lastname) VALUES 
 ('Jan', 'Kowalski'),
 ('Ola', 'Nowak'),
 ('Andrzej', 'Wajda'),
 ('Bogusław', 'Linda');
 
DELETE FROM customers;
TRUNCATE customers;