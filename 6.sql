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

-- Using LIKE with & and _

/*

SELECT columnname FROM table
WHERE columnname LIKE '%pattern%';

SELECT columnname FROM table
WHERE columnname LIKE '_pattern_';

*/

SELECT * FROM actors
WHERE first_name LIKE 'P%';

SELECT * FROM actors
WHERE first_name LIKE 'Pe_';

SELECT * FROM actors
WHERE first_name LIKE '%r';

SELECT * FROM actors
WHERE first_name LIKE '%r%';

SELECT * FROM actors
WHERE first_name LIKE '__rl__';

-- Selecting data where a column is between 2 values

/*

SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 BETWEEN VALUE1 AND VALUE2;

*/

SELECT * FROM movies;

SELECT movie_name, release_date FROM movies
WHERE release_date BETWEEN '1995-01-01' AND '1999-12-31';

SELECT movie_name, movie_length FROM movies
WHERE movie_length BETWEEN 90 AND 120;

SELECT movie_name, movie_lang FROM movies
WHERE movie_lang BETWEEN 'E' AND 'Portuguese';

-- Ordering the results rerturned 

/* 

SELECT columnname1, columnname2 FROM tablename 
ORDER BY columnname3;

*/

SELECT * FROM actors;

SELECT first_name, last_name, date_of_birth FROM  actors
ORDER BY first_name;


SELECT first_name, last_name, date_of_birth FROM  actors
ORDER BY first_name DESC;


SELECT first_name, last_name, date_of_birth FROM  actors
ORDER BY first_name ASC;


SELECT actor_id first_name, last_name, date_of_birth FROM  actors
ORDER BY actor_id;


SELECT actor_id first_name, last_name, date_of_birth FROM  actors
ORDER BY actor_id DESC;


SELECT actor_id first_name, last_name, date_of_birth FROM  actors
ORDER BY date_of_birth;


SELECT actor_id first_name, last_name, date_of_birth FROM  actors
ORDER BY date_of_birth ASC;

SELECT actor_id first_name, last_name, date_of_birth FROM  actors
WHERE gender = 'F'
ORDER BY date_of_birth DESC;


-- Limiting the the number of records returned

/*

SELECT columnname1, columnname2 FROM tablename
LIMIT N;

*/

SELECT * FROM movie_revenues;

SELECT * FROM movie_revenues
ORDER BY domestic_takings
LIMIT 5;


SELECT * FROM movie_revenues
ORDER BY revenue_id
LIMIT 10;

SELECT * FROM movie_revenues
ORDER BY revenue_id
LIMIT 5 OFFSET 9;

-- Using  Fetch

/*

SELECT column1 FROM table1
FETCH FIRST 1 ROW ONLY;

*/

SELECT movie_id, movie_name FROM movies
FETCH FIRST 1 ROW ONLY;


SELECT movie_id, movie_name FROM movies
FETCH FIRST ROW ONLY;


SELECT movie_id, movie_name FROM movies
FETCH FIRST 10 ROW ONLY;


SELECT movie_id, movie_name FROM movies
OFFSET 8 ROWS
FETCH FIRST 10 ROW ONLY;

-- Distinct values

/*

SELECT DISTINCT columnname FROM tablename;

*/


SELECT DISTINCT movie_lang, age_certificate FROM movies
ORDER BY movie_lang;

SELECT DISTINCT * FROM movies
ORDER BY movie_lang;

SELECT * FROM movies;

