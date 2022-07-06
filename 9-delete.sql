SELECT * FROM books;

DELETE FROM books WHERE price < 100;

-- usunąć wszystkie książki o programowaniu
DELETE FROM books WHERE category = 'programowanie';

TRUNCATE books;