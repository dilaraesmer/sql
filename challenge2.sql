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
	
	
-- 1. Insert the data into the owners table

INSERT INTO owners (first_name, last_name, city, state, email)
VALUES ('Samuel', 'Smith', 'Boston', 'MA', 'samsmith@gmail.com'),
('Emma', 'Johnson', 'Seattle', 'WA', 'emjhonson@gmail.com'),
('John', 'Oliver', 'New York', 'NY', 'johnoliver@gmail.com'),
('Olivia', 'Brown', 'San Francisco', 'CA', 'oliviabrown@gmail.com'),
('Simon', 'Smith', 'Dallas', 'TX', 'sismith@gmail.com'),
(null, 'Maxwell', null, 'CA', 'lordmaxwell@gmail.com');

SELECT * FROM owners;

-- 2. Insert the data into the pets table

INSERT INTO pets (species, full_name, age, owner_id)
VALUES ('Dog', 'Rex', 6, 1),
('Rabbit', 'Fluffy', 2,5),('Cat', 'Tom', 8,2),('Mouse', 'Jerry', 2,2),
('Dog', 'Biggles',4,2),('Tortoise', 'Squirtle', 42, 3);

SELECT * FROM pets;

-- 3. Update Fluffy the rabbits age to 3

UPDATE pets
SET age = 3
WHERE full_name = 'Fluffy';

SELECT * FROM pets;

