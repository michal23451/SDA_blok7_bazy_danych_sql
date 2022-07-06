/*

1. Wczytaj dane ze skryptu sample-data-1.sql
2. Wyświetl książki z kategorii Klasyka polska
3. Policz ile jest książek w przedziale cenowym 10 - 30 zł
4. Wyświetl największą liczbę stron oraz najmniejszą w książkach
5. Wyświetl tytuł książki z największą ilością stron
6. Wyświetl książki wydane przed 2000 rokiem
7. Policz ile książek wydało każde z wydawnictw po 2000 roku
8. Policz jaka jest suma stron książek wydanych przez wydawnictwo PWN
9. Wyświetl kategorie książek dla których istnieją co najmniej 2 książki, których cena jest większa
od 10.01 zł
10. Wyświetl tytuły książek posortowane alfabetycznie w porządku malejącym, które nie są lekturą i
których cena jest większa niż 20 zł

*/

SELECT * FROM books WHERE category = 'klasyka polska';
SELECT COUNT(*) AS books_amount FROM books WHERE price BETWEEN 10 AND 30;
SELECT MIN(page_count), MAX(page_count) FROM books;
SELECT title FROM books WHERE page_count = (SELECT MAX(page_count) FROM books);
SELECT * FROM books WHERE YEAR(published) < "2000";
SELECT * FROM books WHERE DATE_FORMAT(published, '%Y') < 2000;
SELECT YEAR(published) FROM books;
SELECT COUNT(*), publisher FROM books WHERE YEAR(published) > 2000 GROUP BY publisher;
SELECT SUM(page_count) FROM books WHERE publisher = 'PWN';
SELECT category FROM books WHERE price > 10.01 GROUP BY category HAVING count(*) >= 2;
SELECT title FROM books WHERE category <> 'Lektury' AND price > 20 ORDER BY title DESC;