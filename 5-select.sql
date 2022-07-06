SELECT title, price FROM books;
SELECT * FROM books;
SELECT * FROM books WHERE price < 100;
SELECT * FROM books WHERE author LIKE "paul%"; -- case insensitive
SELECT * FROM books WHERE author LIKE BINARY "paul%"; -- case sensitive
SELECT * FROM books WHERE price BETWEEN 50 AND 100;
SELECT * FROM books WHERE page_count IN (624, 1216, 320);
SELECT * FROM books WHERE price IS NOT NULL;

-- pobrac ksiazki ktore maja cene mniejsza niz 100 lub autorem jest J.K. Rowling
SELECT * FROM books WHERE price < 100 OR author = 'J.K. Rowling';

SELECT DISTINCT publisher FROM books;
SELECT DISTINCT publisher, author FROM books;

SELECT * FROM books LIMIT 1, 2;

SELECT * FROM books ORDER BY author ASC, publisher DESC;

-- wyswietlic 2 ksiazki posortowane malejaco wzgledem ceny
SELECT * FROM books ORDER BY price DESC LIMIT 2;

SELECT * FROM books;

ALTER TABLE books MODIFY COLUMN price DECIMAL(8, 2);
SELECT author, AVG(price) FROM books GROUP BY author;
SELECT publisher, AVG(price), COUNT(*) FROM books GROUP BY publisher;
SELECT publisher, SUM(price) AS total_price FROM books GROUP BY publisher HAVING total_price > 100;

-- zadanie: wyświetlić najdroższą książkę każdego autora
SELECT author, MAX(price) FROM books GROUP BY author;

SELECT * FROM books WHERE price = (SELECT MIN(price) FROM books);

-- wyswietlić książki (title, author, price) tańsze niż średnia cena książek Helionu
SELECT title, author, price FROM books WHERE price < (SELECT AVG(price) FROM books WHERE publisher = 'Helion');
SELECT title, author, price FROM books WHERE price < (SELECT AVG(price) FROM books GROUP BY publisher HAVING publisher = 'Helion');

SELECT EXISTS(SELECT * FROM books WHERE price < 1000);
SELECT * FROM books WHERE EXISTS(SELECT * FROM books WHERE price < 100);
SELECT EXISTS(SELECT * FROM books WHERE price < 100);





