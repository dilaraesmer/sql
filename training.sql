CREATE TABLE Customer_table(
Cust_id INT,
   first_name VARCHAR,
   last_name VARCHAR,
   age INT,
   email_id VARCHAR);


INSERT INTO Customer_table VALUES(
1, 'jacky', 'boston', 18, 'rsf@hgh.com');

SELECT * FROM Customer_table;

INSERT INTO Customer_table(
cust_id, first_name, age, email_id)
VALUES(2, 'dee', 21, 'ndbj@kd.com');

INSERT INTO customer_table 
VALUES(4, 'hsbd', 'sjd', 22, 'dfj@nbd@j.com'),
(4, 'dkn', 'dkj', 22, 'dmn@nbd@j.com');

SELECT * FROM customer_table;

COPY "customer_table" FROM 'C:\Users\DELL\Desktop\original.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM c;

INSERT INTO customer_table
    SELECT * FROM c
    ON CONFLICT DO NOTHING;
	
	SELECT * FROM customer_table;

SELECT
    cust_id,
    COUNT( cust_id )
FROM
    customer_table
GROUP BY
    cust_id
HAVING
    COUNT( cust_id )> 1
ORDER BY
    cust_id;
	
SELECT first_name, last_name FROM c
    ORDER BY last_name DESC;
SELECT * FROM c;

SELECT DISTINCT first_name FROM customer_table;