SHOW TABLES;

CREATE TABLE books_backup_1 LIKE books;
INSERT INTO books_backup_1 SELECT * FROM books;
SELECT * FROM books_backup_1;

CREATE TABLE books_backup_2 AS SELECT * FROM books;
SELECT * FROM books_backup_2;