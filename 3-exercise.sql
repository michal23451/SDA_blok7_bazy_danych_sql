USE library;

CREATE TABLE IF NOT EXISTS books(
	title VARCHAR(255),
    author VARCHAR(255),
    published DATE,
    publisher VARCHAR(255),
    isbn VARCHAR(32),
    category VARCHAR(255),
    page_count INT,
    price FLOAT
);

ALTER TABLE books MODIFY COLUMN title VARCHAR(255) NOT NULL;
ALTER TABLE books MODIFY COLUMN author VARCHAR(255) NOT NULL;
ALTER TABLE books MODIFY COLUMN isbn VARCHAR(32) NOT NULL UNIQUE;
ALTER TABLE books MODIFY COLUMN publisher VARCHAR(255) DEFAULT 'unknown';

DESC books;

DROP TABLE books;