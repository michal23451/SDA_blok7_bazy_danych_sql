SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
SELECT DATE_ADD('2022-03-25', INTERVAL 10 DAY);
SELECT DATE_SUB('2022-03-25', INTERVAL 5 WEEK);
SELECT DATEDIFF('2022-06-30', '2022-06-13');
SELECT DATE_FORMAT('2022-01-01', '%W');

SELECT @@GLOBAL.time_zone, @@SESSION.time_zone;
SELECT @@system_time_zone;

-- wyświetlić książki opublikowane w ostatnim roku (okres 1 roku)
-- SELECT * From books WHERE published > DATE_ADD(year,-1,GETDATE());
SELECT * from books where DATEDIFF(published, date_sub(now(), interval 1 year)) > 0;
SELECT * FROM books WHERE published > DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

