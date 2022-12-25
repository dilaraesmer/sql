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
	
	
-- 1. Select the movie_name and release_date of every movie

SELECT movie_name, release_date FROM movies; 

-- 2. Select the first and last names of all American directors

SELECT first_name, last_name FROM directors
WHERE nationality = 'American';

-- 3. Select all male actors born after the 1st of January 1970

SELECT * FROM actors
WHERE gender = 'M'
AND date_of_birth > '1970-01-01';

-- 4. Select the names of all movies which are over 90 minutes long and movie 
-- language is English.

SELECT movie_name FROM movies
WHERE movie_length > 90
AND movie_lang = 'English';