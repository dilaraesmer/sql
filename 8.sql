-- Aggregate Functions : COUNT

/*
SELECT COUNT(columnname) FROM tablename;
*/

SELECT COUNT(*) FROM movie_revenues;

SELECT COUNT(international_takings) FROM movie_revenues;

SELECT COUNT(*) FROM movies
WHERE movie_lang = 'English';

-- Aggregate Functions : SUM

/*
SELECT SUM(columnname) FROM tablename;
*/

SELECT SUM(domestic_takings) FROM movie_revenues;


SELECT SUM(domestic_takings) FROM movie_revenues
WHERE domestic_takings > 100.0;

SELECT SUM(movie_length) FROM movies
WHERE movie_lang = 'Chinese';

-- Aggregate Functions : MIN and MAX

/*
SELECT MAX(columnname) FROM tablename;
SELECT MIN(columnname) FROM tablename;
*/

SELECT MAX(movie_length) FROM movies;
SELECT MIN(movie_length) FROM movies;


SELECT MIN(movie_length) FROM movies
WHERE movie_lang = 'Japanese';


SELECT MAX(release_date) FROM movies;
SELECT MIN(release_date) FROM movies;


SELECT MAX(movie_name) FROM movies;
SELECT MIN(movie_name) FROM movies;


-- Aggregate Function : AVG

/*
SELECT AVG(columnname) FROM tablename;
*/

SELECT AVG(movie_length) FROM movies;

SELECT AVG(movie_length) FROM movies
WHERE age_certificate = '18';

-- Grouping data 

/*
SELECT column1, AGGFUN(column2) FROM tablename
GROUP BY column1;
*/

SELECT COUNT(movie_lang) FROM movies;

SELECT movie_lang, COUNT(movie_lang) FROM movies
GROUP BY movie_lang;

SELECT movie_lang, AVG(movie_length) FROM movies
GROUP BY movie_lang;

