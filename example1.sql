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
	
	
-- create the directors table

CREATE TABLE directors (
	
      director_id SERIAL PRIMARY KEY, 
	  first_name VARCHAR(30),
	  last_name VARCHAR(30) NOT NULL,
	  date_of_birth DATE,
	  nationality VARCHAR(20)
);

SELECT * FROM directors;

-- Create the actor tables

CREATE TABLE actors (
	
        actor_id SERIAL PRIMARY KEY, 
	    first_name VARCHAR(30),
	    last_name VARCHAR(30),
	    gender CHAR(1),
	    date_of_birth DATE
);

SELECT * FROM actors;

-- Create the movies table (with a foreign key)

CREATE TABLE movies (

	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50),
	movie_length INT,
	movie_lang VARCHAR(20),
	release_date DATE,
	age_certificate VARCHAR(5),
	director_id INT REFERENCES directors (director_id)
);

SELECT * FROM movies;

-- creating the movie_revenues table

CREATE TABLE movie_revenues (
 
	revenue_id SERIAL PRIMARY KEY,
	movie_id INT REFERENCES movies (movie_id),
	domestic_takings NUMERIC(6,2),
	international_takings NUMERIC(6,2)
);

SELECT * FROM movie_revenues;

-- creating the movies_actors table 

CREATE TABLE movies_actors (

    movie_id INT REFERENCES movies (movie_id),
	actor_id INT REFERENCES actors (actor_id),
	PRIMARY KEY (movie_id, actor_id)
);

SELECT * FROM movies_actors;