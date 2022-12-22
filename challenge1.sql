-- Database: owners_pets

-- DROP DATABASE owners_pets;

CREATE DATABASE owners_pets
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Turkish_Turkey.1254'
    LC_CTYPE = 'Turkish_Turkey.1254'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	

----- CREATE THE owners table -----


CREATE TABLE owners (

       id SERIAL PRIMARY KEY,
	   first_name VARCHAR(30),
	   last_name VARCHAR(30),
	   city VARCHAR(30),
	   state CHAR(2)
);

SELECT * FROM owners;

----- CREATE THE PETS TABLE (WITH A FOREIGN KEY) -----

CREATE TABLE pets (

    id SERIAL PRIMARY KEY, 
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT,
	owner_id INT REFERENCES owners(id)
);

SELECT * FROM pets;

----- ADD AN EMAIL COLUMN TO THE owners table -----

ALTER TABLE owners
ADD COLUMN email VARCHAR(30) UNIQUE;

SELECT * FROM owners;

----- CHANGE THE DATA TYPE OF THE last_name COLUMN IN THE owners TABLE TO VARCHAR(50) -----

ALTER TABLE owners
ALTER COLUMN last_name TYPE VARCHAR(50);

SELECT * FROM owners;