-- 3
USE cinema;
-- 4
CREATE TABLE IF NOT EXISTS actor (
	id_actor INT AUTO_INCREMENT /*PRIMARY KEY*/,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    dateofbirth DATE,
    PRIMARY KEY(id_actor)
);
CREATE TABLE IF NOT EXISTS movie (
	id_movie INT AUTO_INCREMENT,
	title VARCHAR(255),
    category VARCHAR(255),
    yearofproduction DATE,
    PRIMARY KEY(id_movie)
);
CREATE TABLE IF NOT EXISTS actor_movie (
	id_actor INT,
    id_movie INT,
    PRIMARY KEY (id_actor, id_movie), -- dodajemy zabezpieczenie przed zdublowanymi wierszami !!! później poznaliśmy, że należy to zrobić unikalnym indexem na dwóch kolumnach a nie przez primary key
    CONSTRAINT actor_fk FOREIGN KEY (id_actor) REFERENCES actor(id_actor),
	CONSTRAINT movie_fk FOREIGN KEY (id_movie) REFERENCES movie(id_movie)
);
-- 5
INSERT INTO actor(firstname, lastname, dateofbirth) VALUES 
	('Adam', 'Nowak', '1980-04-05');
-- 6
INSERT INTO movie(title, category, yearofproduction) VALUES
	('Film 1', 'dramat', '2022-05-01'),
    ('Film 2', 'horror', '1999-11-12'),
    ('Film 3', 'dramat', '2015-01-27');
INSERT INTO actor_movie(id_actor, id_movie) VALUES
	(1,1),
    (1,2),
    (1,3);
-- 7 i 9
SELECT a.firstname, a. lastname, m.* FROM movie AS m
JOIN actor_movie AS am ON m.id_movie = am.id_movie
JOIN actor AS a ON a.id_actor = am.id_actor AND a.firstname='Adam' AND a.lastname='Nowak';
-- 8
INSERT INTO movie(title, category, yearofproduction) VALUES ('Film 99', 'komedia', '2019-06-27');
INSERT INTO actor(firstname, lastname, dateofbirth) VALUES ('Jan', 'Kowalski', '1992-08-05');
INSERT INTO actor_movie(id_actor, id_movie) VALUES (2,4);
-- 10
INSERT INTO actor(firstname, lastname, dateofbirth) VALUES 
	('Paweł', 'XXX', '1992-08-05'),
    ('Marcin', 'YYY', '1992-08-05'),
    ('Tomasz', 'ZZZ', '1992-08-05');
INSERT INTO actor_movie(id_actor, id_movie) VALUES 
	(3,1),
    (4,2),
    (5,3);
-- 11
SELECT m.title, COUNT(am.id_actor) AS ilu_aktorow FROM actor_movie AS am
JOIN movie AS m ON m.id_movie = am.id_movie
GROUP BY am.id_movie
HAVING ilu_aktorow > 1
ORDER BY ilu_aktorow;
-- pomocnicze
SHOW TABLES;
DESC actor;
DESC movie;
DESC actor_movie;
SELECT * FROM actor;
SELECT * FROM movie;
SELECT * FROM actor_movie ORDER BY id_actor, id_movie;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS actor_movie;
