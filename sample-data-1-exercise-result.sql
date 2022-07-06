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

1 SELECT * FROM books;
2 SELECT * FROM books WHERE category = 'Klasyka polska'; 
3 SELECT count(*) FROM books WHERE price BETWEEN 10 AND 30;
4 SELECT min(page_count), max(page_count) FROM books;
5 SELECT title FROM books WHERE page_count = (SELECT max(page_count) FROM books);
6 SELECT * FROM books WHERE published < '2000-01-01';
6 SELECT * FROM books WHERE date_format(published, '%Y') < 2000;
7 SELECT publisher, count(*) FROM books WHERE published >= '2000-01-01'GROUP BY publisher; 
7 SELECT publisher, count(*) FROM books WHERE date_format(published, '%Y') > 2000 GROUP BY publisher;
8 SELECT sum(page_count) FROM books WHERE publisher = 'PWN'; 
9 SELECT count(*), category FROM books WHERE price > 10.01 GROUP BY category HAVING count(*) > 1; 
10 SELECT title FROM books	WHERE category != 'Lektury' AND price > 20.00 ORDER BY title DESC;

