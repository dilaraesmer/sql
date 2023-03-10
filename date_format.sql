CREATE TABLE Employee(
Employee_ID integer NOT NULL PRIMARY KEY,
Name text NOT NULL,
Dept text,
Salary money,
Date_Of_Joining DATE);

INSERT INTO Employee(Employee_ID, Name, Dept, Salary, Date_Of_Joining)
VALUES(1, 'James', 'IT', 3500, '2016-05-25'),
	   (2, 'Simona', 'Electrical', 2500, '2018-08-12'),
	   (3, 'Kiley', 'Mechanical', 2250, '2019-10-21'),
	   (4, 'Fletcher', 'IT', 3000, '2017-06-10'),
	   (5, 'Alisha', 'IT', 2700, '2018-9-16'),
	   (6, 'Chanel', 'Mechanical', 2500, '2018-12-07'),
	   (7, 'Erick', 'IT', 3250, '2017-07-13'),
	   (8, 'Amber', 'Electrical', 2700, '2018-03-05'),
	   (9, 'Stephen', 'Electrical', 2000, '2020-11-24'),
	  (10, 'Jose', 'HR', 3700, '2016-01-23');

SELECT * FROM Employee;

DROP TABLE Employee;
/* to_date(): It is a function that can be used to convert string to date and its 
return type is the date 

syntax: to_date(text,text)
*/

SELECT to_date('04 Jan 2021' , 'DD Mon YYYY');

INSERT INTO Employee(Employee_ID, Name, Dept, Salary, Date_Of_Joining)
VALUES(1, 'James', 'IT', 3500, 'May 25, 2016'),
	   (2, 'Simona', 'Electrical', 2500, 'August 12, 2018'),
	   (3, 'Kiley', 'Mechanical', 2250, 'October 21, 2019'),
	   (4, 'Fletcher', 'IT', 3000, 'June 10, 2017'),
	   (5, 'Alisha', 'IT', 2700, 'September 16, 2018'),
	   (6, 'Chanel', 'Mechanical', 2500, 'December 07, 2018'),
	   (7, 'Erick', 'IT', 3250, 'June 13, 2017'),
	   (8, 'Amber', 'Electrical', 2700, 'May 3, 2018'),
	   (9, 'Stephen', 'Electrical', 2000, 'November 24, 2020'),
	  (10, 'Jose', 'HR', 3700, 'January 23, 2016');

SELECT * FROM Employee;

CREATE TABLE date_format(new_date date);


INSERT INTO date_format(new_date) VALUES (to_date('2021 Jan 10', 'YYYY Mon DD'));

INSERT INTO date_format(new_date) VALUES (to_date('2021/01/10', 'YYYY/MM/DD'));

INSERT INTO date_format(new_date) VALUES (to_date('2021-01-10', 'YYYY-MM-DD'));


SELECT * FROM date_format;

INSERT INTO Employee(Employee_ID, Name, Dept, Salary, Date_Of_Joining)
VALUES(1, 'James', 'IT', 3500, '2016-05-25'),
	   (2, 'Simona', 'Electrical', 2500, '2018-08-12'),
	   (3, 'Kiley', 'Mechanical', 2250, '2019-10-21'),
	   (4, 'Fletcher', 'IT', 3000, '2017-06-10'),
	   (5, 'Alisha', 'IT', 2700, '2018-9-16'),
	   (6, 'Chanel', 'Mechanical', 2500, '2018-12-07'),
	   (7, 'Erick', 'IT', 3250, '2017-07-13'),
	   (8, 'Amber', 'Electrical', 2700, '2018-03-05'),
	   (9, 'Stephen', 'Electrical', 2000, '2020-11-24'),
	  (10, 'Jose', 'HR', 3700, '2016-01-23');
	  
SELECT * FROM Employee
WHERE Date_Of_Joining > '2018-01-01'; 
---------------------------------------------------------
DROP TABLE Employee;

CREATE TABLE Employee(
Employee_ID integer NOT NULL PRIMARY KEY,
Name text NOT NULL,
Dept text,
Salary money,
Date_Of_Joining DATE);

INSERT INTO Employee(Employee_ID, Name, Dept, Salary, Date_Of_Joining)
VALUES(1, 'James', 'IT', 3500, '20160525'),
	   (2, 'Simona', 'Electrical', 2500, '20180812'),
	   (3, 'Kiley', 'Mechanical', 2250, '20191021'),
	   (4, 'Fletcher', 'IT', 3000, '20170610'),
	   (5, 'Alisha', 'IT', 2700, '20180916'),
	   (6, 'Chanel', 'Mechanical', 2500, '20181207'),
	   (7, 'Erick', 'IT', 3250, '20170713'),
	   (8, 'Amber', 'Electrical', 2700, '20180305'),
	   (9, 'Stephen', 'Electrical', 2000, '20201124'),
	  (10, 'Jose', 'HR', 3700, '20160123');
	  
SELECT * FROM Employee;

