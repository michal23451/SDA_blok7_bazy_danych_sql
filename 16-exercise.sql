CREATE DATABASE cinema;
GRANT ALL PRIVILEGES ON *.* TO 'michal';
USE cinema;

CREATE TABLE IF NOT EXISTS actor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(255),
    lastname VARCHAR(255),
    number_of_oscars INT
);

CREATE TABLE IF NOT EXISTS movie (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    director VARCHAR(255)
);

ALTER TABLE actor CHANGE firstname firstname VARCHAR(255) NOT NULL;
ALTER TABLE actor CHANGE lastname lastname VARCHAR(255) NOT NULL;
DESC actor;

INSERT INTO actor (firstname, lastname, number_of_oscars) VALUES ('Jan', 'Nowak', 3);
INSERT INTO movie (title, director) VALUES 
	('Star Wars 1', 'Juliusz Knapik'), 
	('Star Wars 2', 'Tomasz Knapik'), 
	('Władca Pierścieni', 'Juliusz Kot');

CREATE TABLE IF NOT EXISTS actor_movie (
	actor_id INT,
    movie_id INT, 
    FOREIGN KEY(actor_id) REFERENCES actor(id),
    FOREIGN KEY(movie_id) REFERENCES movie(id)
);

SELECT * FROM actor;
SELECT * FROM movie;
INSERT INTO actor_movie VALUES (1,1), (1,2), (1,3);
SELECT * FROM actor_movie;

SELECT am.*, a.firstname, a.lastname, m.title FROM actor_movie AS am
	JOIN actor AS a ON a.id = am.actor_id 
    JOIN movie AS m ON m.id = am.movie_id
    WHERE a.id = 1;

INSERT INTO actor (firstname, lastname, number_of_oscars) VALUES ('Janusz', 'Kowalski', 5);
INSERT INTO movie (title, director) VALUES ('Karry Potter', 'J.J. Abrams');
INSERT INTO actor_movie VALUES (2, 4);

UPDATE movie SET title = "Harry Potter" WHERE id = 4;

INSERT INTO actor (firstname, lastname, number_of_oscars) VALUES 
	('Paweł', 'XXX', 1),
	('Marcin', 'YYY', 2),
	('Tomasz', 'ZZZ', 3);

INSERT INTO actor_movie VALUES (3, 1), (4, 2), (5, 3);

SELECT m.title FROM actor_movie AS am
	JOIN movie AS m ON m.id = am.movie_id
    GROUP BY am.movie_id
    HAVING count(*) > 1;
