USE demo_database;
CREATE TABLE IF NOT EXISTS person(
	id BIGINT PRIMARY KEY, 
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    age INT
);

SHOW TABLES;
DESC person;
DESC persons;

ALTER TABLE person RENAME TO persons;
ALTER TABLE persons ADD COLUMN telephone_number VARCHAR(12) AFTER lastname;
ALTER TABLE persons CHANGE COLUMN telephone_number telephone VARCHAR(12);
ALTER TABLE persons MODIFY COLUMN telephone VARCHAR(15);
ALTER TABLE persons MODIFY COLUMN age INT NOT NULL;

DROP TABLE IF EXISTS persons;

