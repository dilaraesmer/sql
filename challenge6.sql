-- 1. Count the number of actors born after the 1st of January 1970.

SELECT COUNT(*) FROM actors
WHERE date_of_birth > '01-01-1970';

-- 2. What was the highest and lowest domestic takings for a movie?

SELECT MAX(domestic_takings) FROM movie_revenues;

SELECT MIN(domestic_takings) FROM movie_revenues;

-- 3. What is the sum total movie length for movies rated 15?

SELECT SUM(movie_length) FROM movies
WHERE age_certificate = '15';

-- 4. How many Japanese directors are in the directors table?

SELECT COUNT(*) FROM directors
WHERE nationality = 'Japanese';

-- 5.What is the average movie length for Chinese movies?

SELECT AVG(movie_length) FROM movies
WHERE movie_lang = 'Chinese';

-- 6. How many directors are there per nationality?

SELECT nationality, COUNT(nationality) FROM directors
GROUP BY nationality;