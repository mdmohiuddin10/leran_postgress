-- Active: 1731585360528@@127.0.0.1@5432@ph
SELECT * from person2

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

SELECT * from person2

INSERT into person2 values (4,'test', 'last', 45, true, '10.02.2022', 'karim@gmail.com')

ALTER TABLE person2
 Alter COLUMN age set NOT NULL;

ALTER TABLE person2
 ADD constraint unique_person2_age UNIQUE (age);


ALTER TABLE person2
 DROP constraint unique_person2_age;

ALTER TABLE person2
 ADD constraint primaryKey_person2_age PRIMARY KEY (person_id);

 CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(15),
    age INT,
    grade CHAR(2),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
 )

 
insert INTO students (first_name, last_name, age, grade, email, dob, blood_group, country)
VALUES
('Jhon', 'Doe', 13, 'A+', 'Jhon Doe@gmail.com', '12.05.2000', 'o+', 'Japan')

INSERT INTO students (first_name, last_name, age, grade, email, dob, blood_group, country)
VALUES
('Emma', 'Smith', 15, 'B', 'emma.smith@gmail.com', '2002-08-14', 'A-', 'USA'),
('Liam', 'Brown', 14, 'A', 'liam.brown@gmail.com', '2003-11-22', 'B+', 'Canada'),
('Olivia', 'Davis', 12, 'A-', 'olivia.davis@gmail.com', '2005-07-10', 'AB+', 'Australia'),
('Noah', 'Wilson', 13, 'B+', 'noah.wilson@gmail.com', '2004-01-15', 'A+', 'UK'),
('Sophia', 'Moore', 16, 'A', 'sophia.moore@gmail.com', '2001-10-30', 'O-', 'Germany'),
('James', 'Taylor', 14, 'B-', 'james.taylor@gmail.com', '2003-04-05', 'B-', 'France'),
('Isabella', 'Anderson', 15, 'A+', 'isabella.anderson@gmail.com', '2002-06-20', 'A+', 'Italy'),
('Mason', 'Thomas', 13, 'B', 'mason.thomas@gmail.com', '2004-02-18', 'AB-', 'Spain'),
('Mia', 'Jackson', 12, 'A-', 'mia.jackson@gmail.com', '2005-09-23', 'O+', 'Brazil');

SELECT * from students;
SELECT email, age, dob from students;
SELECT email as student_email from students;
SELECT * FROM students ORDER BY first_name ASC;
SELECT DISTINCT country from students;
SELECT DISTINCT blood_group from students;

-- where data filter
SELECT * FROM students 
 WHERE country = 'USA'


-- multiple condition
SELECT * FROM students 
 WHERE country = 'USA' AND email = 'emma.smith@gmail.com'

-- multiple condition
-- SELECT * FROM students 
--  WHERE country = 'USA' OR country = 'UK'

-- SELECT * FROM students 
--  WHERE age >= 15


-- SELECT upper(first_name), * FROM students

-- scalar function
SELECT concat(first_name, ' ', last_name) FROM students



