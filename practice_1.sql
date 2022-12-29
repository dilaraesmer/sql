CREATE TABLE members (
member_id SERIAL,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INTEGER,
gender VARCHAR(7),
job VARCHAR(50)
);


INSERT INTO members (first_name, last_name, age, gender, job)
VALUES ('Anne', 'Jones', 21, 'Female', 'Student'),
('Ben', 'Smith', 23, 'Male', 'Teacher'),
('Rachel', 'Rey', 25, 'Female', 'Developer'),
('Samuray', 'Jacob', 34, 'Male', 'Pianist'),
('Emine', 'Saygın', 56, 'Female', 'Chemist'),
('Piraye', 'Çelik', 49, 'Female', 'Biologist'),
('Sumru', 'Aydın', 70, 'Female', 'Philosopher'),
('Levent', 'Esmer', 53, 'Male', 'Professional Tourist Guide'), 
('Berk', 'Ulu', 37, 'Male', 'Football Player'),
('Duru', 'Akın', 27, 'Female', 'Artist');

SELECT * FROM members;

SELECT first_name, last_name, job FROM members
WHERE first_name = 'Levent';


