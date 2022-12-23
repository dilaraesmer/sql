-- Database: test

-- DROP DATABASE test;

CREATE DATABASE test
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Turkish_Turkey.1254'
    LC_CTYPE = 'Turkish_Turkey.1254'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
	
-- INSERT DATA INTO A TABLE --


-- /* INSERT INTO tablename (columnname1, columnname2, columnname3)
-- VALUES ('value1', 'value2', 'value3'); /*

 
INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('David', 'Mitchell', 'dmitch@gmail.com', 'GBR', 43);


SELECT * FROM examples;

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('Emily', 'Watson', 'ewatson@gmail.com', 'USA', 24),('Theo', 'Scott', 'tscott@gmail.com', 'AUS', 38),
('Emily', 'Smith', 'esmith@gmail.com', 'GBR', 29), ('Jim', 'Burr', 'jburr@gmail.com', 'USA', 54);

SELECT * FROM examples;

-- UPDATE DATA IN A TABLE --

-- UPDATE tablename
-- SET columnname = 'newvalue'
-- WHERE columnname = 'value';

UPDATE examples
SET email = 'davidmitchell@gmail.com'
WHERE example_id = 1;

SELECT * FROM examples;

UPDATE examples
SET nationality = 'CAN'
WHERE nationality = 'USA';

SELECT * FROM examples;

UPDATE examples 
SET first_name = 'James', age = 55
WHERE example_id = 5;

SELECT * FROM examples;

DELETE FROM examples;

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('David', 'Mitchell', 'dmitch@gmail.com', 'GBR', 43);


SELECT * FROM examples;

INSERT INTO examples (first_name, last_name, email, nationality, age)
VALUES ('Emily', 'Watson', 'ewatson@gmail.com', 'USA', 24),('Theo', 'Scott', 'tscott@gmail.com', 'AUS', 38),
('Emily', 'Smith', 'esmith@gmail.com', 'GBR', 29), ('Jim', 'Burr', 'jburr@gmail.com', 'USA', 54);

SELECT * FROM examples;

-- UPDATE DATA IN A TABLE --

-- UPDATE tablename
-- SET columnname = 'newvalue'
-- WHERE columnname = 'value';

UPDATE examples
SET email = 'davidmitchell@gmail.com'
WHERE example_id = 1;

SELECT * FROM examples;

UPDATE examples
SET nationality = 'CAN'
WHERE nationality = 'USA';

SELECT * FROM examples;

UPDATE examples 
SET first_name = 'James', age = 55
WHERE example_id = 5;

SELECT * FROM examples;
