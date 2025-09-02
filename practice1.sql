create database if not exists university;
use university;
CREATE TABLE students (
    name VARCHAR(50),
    roll INT PRIMARY KEY,
    city VARCHAR(50),
    marks INT
);


INSERT INTO students (name, roll, city, marks) VALUES
('Ayesha', 101, 'Dhaka', 85),
('Rahim', 102, 'Chittagong', 78),
('Karim', 103, 'Sylhet', 90),
('Maria', 104, 'Khulna', 88);
SELECT * FROM students;