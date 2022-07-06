USE bank;
SHOW INDEX FROM customers;
DESC customers;
CREATE INDEX lastname_idx ON customers(lastname);
CREATE INDEX firstname_lastname_idx ON customers(firstname, lastname);
DROP INDEX firstname_lastname_idx ON customers;

SELECT * FROM customers;
CREATE UNIQUE INDEX firstname_idx ON customers(firstname);

USE demo_database;

SELECT MAX(age) FROM demo_table_index;
SELECT AVG(age) FROM demo_table_index WHERE age > 45 AND age < 50;

CREATE INDEX age_idx ON demo_table_index(age);
