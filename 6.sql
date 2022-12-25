-- Database: movie_data

-- DROP DATABASE movie_data;

CREATE DATABASE movie_data
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Turkish_Turkey.1254'
    LC_CTYPE = 'Turkish_Turkey.1254'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
-- Using IN and NOT IN

/* 

SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 IN ('value1', 'value2');

SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 NOT IN ('value1', 'value2');

*/

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John');

SELECT first_name, last_name FROM actors
WHERE first_name IN ('Bruce', 'John', 'Peter');

SELECT first_name, last_name FROM actors
WHERE first_name NOT IN ('Bruce', 'John', 'Peter');

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id IN (2,3,4,5,6,8);

SELECT actor_id, first_name, last_name FROM actors
WHERE actor_id NOT IN (2,3,4,5,6,8);
