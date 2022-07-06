-- CREATE DATABASE bank;
USE bank;

/* uprawnienia do bazy bank */

CREATE TABLE IF NOT EXISTS customers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    country VARCHAR(255)
);

INSERT INTO customers(firstname, lastname, country) VALUES
	('Jan', 'Kowalski', 'Polska'),
    ('Ola', 'Nowak', 'Polska'),
    ('Gunter', 'Smidth', 'Germany'),
    ('Jakub', 'Szerszeń', 'Polska'),
	('Jan', 'Kowalski', 'Polska');
    
CREATE TABLE IF NOT EXISTS workers(
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(255),
    lastname VARCHAR(255)
);

INSERT INTO workers(firstname, lastname) VALUES
	('Ola', 'Nowak'),
    ('Zbigniew', 'Małysz');
    
CREATE TABLE IF NOT EXISTS orders(
	id INT PRIMARY KEY,
    order_date DATE,
    price FLOAT,
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

ALTER TABLE orders MODIFY COLUMN id INT AUTO_INCREMENT;

INSERT INTO orders(order_date, price, customer_id) VALUES
	('2020-01-01', 100.00, 1),
    ('2020-02-02', 150.00, 1),
    ('2020-03-03', 130.00, 3),
    ('2020-04-04', 110.00, 4),
	('2020-04-04', 110.00, NULL);