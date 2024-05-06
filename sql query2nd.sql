CREATE DATABASE class;

CREATE TABLE students (
rollno INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO students
(rollno , name)
VALUES
(101,'RISHI') ,
(102,'RUSHI');
CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(100),
salary INT
);
INSERT INTO employee
(id,name,salary)
VALUES
(1,'ADM',1200),
(2,'dkkfg',23094),
(3,'fhj',38924);

SELECT * FROM employee;

CREATE TABLE temp1 (
id INT UNIQUE
);
INSERT INTO temp1 VALUES (109);
INSERT INTO temp1 VALUES (101);
SELECT * FROM temp1;
-- unique combination
CREATE TABLE temp1 (
id  INT ,
name VARCHAR(50),
age INT,
city VARCHAR(20),
PRIMARY KEY (id,name)
);
CREATE TABLE emp (
id INT,
salary INT DEFAULT 25000);

INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;

