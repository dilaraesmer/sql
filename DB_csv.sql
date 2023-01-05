CREATE TABLE example (applicationid numeric, position numeric, application_date DATE, 
						 stage text, status text, recruiter text, country text, applicant_name text,
						 salary numeric);
  
SELECT application_date, 
TO_CHAR(application_date, 'DD/MM/YYYY') AS formatted_date
FROM example;

COPY public."example" FROM '‪C:\Users\DELL\Downloads\example.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM example;