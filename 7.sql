-- Dealing with NULL values

/* 
SELECT * FROM tablename
WHERE columnname IS NULL;

SELECT * FROM tablename
WHERE columnname IS NOT NULL;
*/

SELECT * FROM actors
WHERE date_of_birth IS NULL;

SELECT * FROM actors
WHERE date_of_birth IS NOT NULL;

SELECT * FROM movie_revenues
WHERE domestic_takings IS NOT NULL
ORDER BY domestic_takings DESC;

SELECT * FROM movie_revenues
WHERE international_takings IS NULL;

-- Setting a column name alias

/*

SELECT columnname AS new_columnname FROM tablename;

*/

SELECT last_name AS surname FROM directors;


SELECT last_name AS surname FROM directors
WHERE last_name = 'Anderson';

SELECT last_name AS surname FROM directors
WHERE last_name LIKE 'A%';

SELECT last_name AS surname FROM directors
WHERE last_name LIKE 'A%'
ORDER BY surname;

-- Using concatenate 

/* 
SELECT 'string1' || 'string2' AS new_string;

SELECT CONCAT(column1, column2) AS new_column FROM tablename;

SELECT CONCAT_WS(' ', column1, column2) AS new_column FROM tablename;
*/

SELECT 'concat' || 'together' AS new_string;

SELECT 'concat' || ' ' || 'together' AS new_string;

SELECT CONCAT(first_name,last_name) AS full_name FROM actors;

SELECT CONCAT(first_name,' ',last_name) AS full_name FROM actors;

SELECT CONCAT_WS(' ', first_name, last_name, date_of_birth) AS full_name FROM actors;
