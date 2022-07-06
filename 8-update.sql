USE library;

SELECT * FROM books;

UPDATE books SET price = 0 WHERE price IS NULL;
UPDATE books SET title = 'dobry tytul', price = 30 WHERE title = 'zly tytul';

-- zaktualizować kategorię Harrego Pottera na Fantasy
UPDATE books SET category = 'Fantasy' WHERE title LIKE 'Harry Potter%'; 