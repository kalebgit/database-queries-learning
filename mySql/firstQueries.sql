#CREATE DATABASE myDB;
#USE myDB;
#DROP DATABASE myDB;
#CREATE DATABASE myDB;
-- USE myDB;
-- CREATE TABLE employees(
-- 	employee_id INT, 
--     email VARCHAR(40),
--     first_name VARCHAR(50),
--     last_name VARCHAR(50), 
--     hourly_pay DECIMAL(2),
--     hire_date DATE
-- )
-- SELECT * FROM employees
-- RENAME TABLE employees TO workers
-- ALTER TABLE workers 
-- ADD phoneNumber VARCHAR(15)
-- ALTER TABLE workers RENAME COLUMN phoneNumber TO houseNumber
-- ALTER TABLE workers
-- MODIFY COLUMN houseNumber VARCHAR(100)
-- ALTER TABLE workers
-- MODIFY hire_date DATE
-- AFTER last_name
-- USE myDB;
-- CREATE TABLE students(
-- 	StudentdID INT PRIMARY KEY AUTO_INCREMENT,
--     email VARCHAR(40),
--     first_name VARCHAR(1), 
--     last_name VARCHAR(2)
-- );
-- ALTER TABLE students 
-- MODIFY email VARCHAR(30) UNIQUE NOT NULL

-- ALTER TABLE students
-- ADD CONSTRAINT chk_email CHECK (email 
-- ALTER TABLE students 
-- ADD COLUMN school_id INT NOT NULL

-- CREATE TABLE schools(
-- 	school_id INT PRIMARY KEY AUTO_INCREMENT,
--     school_name VARCHAR(50) NOT NULL
-- )

-- ALTER TABLE students 
-- ADD CONSTRAINT FK_student_schoolID FOREIGN KEY (school_id)REFERENCES schools(school_id)
