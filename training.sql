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

COPY Customer_table FROM 'C:\Users\DELL\Desktop\New Folder\yeni\original.csv' DELIMITER ',' CSV HEADER;