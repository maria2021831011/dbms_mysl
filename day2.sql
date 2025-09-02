
CREATE DATABASE uni;
USE uni;

CREATE TABLE student (
    roll INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade varchar(1),
    city varchar(20)
);
CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
    
);
insert into dept values(101,"english"),(103,"bangla");
select*from dept;
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id int,
    foreign key(dept_id)references dept(id)
    
);