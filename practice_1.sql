CREATE TABLE student (
student_id SERIAL,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INTEGER,
gender VARCHAR(7));
DROP TABLE student;

INSERT INTO student (first_name, last_name, age, gender)
VALUES ('Anne', 'Jones', 21, 'Female'),
('Ben', 'Smith', 23, 'Male'),
('Rachel', 'Rey', 25, 'Female'),
('Samuray', 'Jacob', 34, 'Male'),
('Emine', 'Saygın', 56, 'Female'),
('Piraye', 'Çelik', 49, 'Female'),
('Sumru', 'Aydın', 20, 'Female'),
('Levent', 'Esmer', 53, 'Male'), 
('Berk', 'Ulu', 37, 'Male'),
('Duru', 'Akın', 27, 'Female');

SELECT * FROM student;

