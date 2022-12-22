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
	
-- modifying tables and add a column

CREATE TABLE examples (

   example_id SERIAL PRIMARY KEY,
   first_name VARCHAR(30),
   last_name VARCHAR(30)
);

SELECT * FROM examples;

ALTER TABLE examples
ADD COLUMN email VARCHAR(50) UNIQUE;

ALTER TABLE examples
ADD COLUMN nationality VARCHAR(30),
ADD COLUMN age INT NOT NULL;

-- modify a columns data type

-- ALTER TABLE tablename
ALTER COLUMN columnname TYPE new_data_type;


ALTER TABLE examples
ALTER COLUMN nationality TYPE CHAR(3);

SELECT * FROM examples;

ALTER TABLE examples 
ALTER COLUMN last_name TYPE VARCHAR(50),
ALTER COLUMN email TYPE VARCHAR(80);

-- deleting tables 

CREATE TABLE practice (
 
      id SERIAL PRIMARY KEY,
      product_name VARCHAR(50),
      product_price NUMERIC(4,2)
);

SELECT * FROM practice;
