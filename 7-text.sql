SELECT CONCAT('Ala', 'ma', 'kota');
SELECT LOWER('Ala ma KOTA');
SELECT UPPER('Ala ma KOTA');
SELECT TRIM('  Ala ma KOTA  ');
SELECT SUBSTR('Ala ma KOTA', 1, 5);
SELECT SUBSTR('Ala ma KOTA', -4);
SELECT LENGTH('Ala ma KOTA');

-- wyszukać książki których nazwa jest dłuższa niż 20 znaków
SELECT * FROM books WHERE LENGTH(title) > 20;