SHOW DATABASES;
CREATE DATABASE demo_michal;
USE demo_michal;
DROP DATABASE demo_michal;

CREATE USER 'michal' IDENTIFIED BY 'michal1';
GRANT ALL PRIVILEGES ON *.* TO 'michal';
REVOKE ALL PRIVILEGES ON *.* FROM 'michal';
DROP USER 'michal'; 

-- komentarz
/* komentarz */

CREATE DATABASE library;
GRANT ALL PRIVILEGES ON library.* TO 'michal'; 