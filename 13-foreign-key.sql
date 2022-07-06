USE library;

CREATE TABLE invoices(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(10),
    price FLOAT,
    customer_id INT,
    CONSTRAINT customer_fk FOREIGN KEY(customer_id) REFERENCES customers(id) ON DELETE CASCADE ON UPDATE SET NULL
);

ALTER TABLE invoices DROP FOREIGN KEY customer_fk;
ALTER TABLE invoices ADD FOREIGN KEY(customer_id) REFERENCES customers(id) ON DELETE CASCADE ON UPDATE SET NULL;

DROP TABLE invoices;
DESC invoices;

INSERT INTO invoices(title, price, customer_id) VALUES
 ('Faktura 1', 10.00, 1),
 ('Faktura 2', 50.00, 1),
 ('Faktura 3', 99.00, 2),
 ('Faktura 4', 49.50, 2),
 ('Faktura 5', 39.90, 3),
 ('Faktura 6', 78.99, 4);
 
 SELECT * FROM invoices;
