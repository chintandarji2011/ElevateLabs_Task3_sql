-----Create the Database------------------
--CREATE DATABASE elevatlabs_task3;

-----------------------step1. Create Tables---------------------
-----Create `departments` table------
CREATE TABLE departments
(
  dep_id INT PRIMARY KEY,
  dep_name VARCHAR(50) NOT NULL
);
----Create `employees` table---------
CREATE TABLE employees
(
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50) NOT NULL,
  dep_id INT,
  salary decimal(10,2),
  hire_date DATE
);
-------------------step.2 Insert data in tables--------------
----Insert data in `department` table------
INSERT INTO departments
VALUES 
(1,'HR'),(2,'Account'),(3,'IT');
----Insert data in `employees` table-------
INSERT INTO employees (emp_id, emp_name, dep_id, salary, hire_date)
VALUES
(1,'Rajesh Jadhav', 3, 60000, '2015-04-12'),
(2,'Krunal Patil', 3, 45000, '2022-05-23'),
(3,'Swami Rajnathan', 2, 34000, '2023-02-22'),
(4,'Harsh Sharma', 1, 75000, '2018-04-11'),
(5, 'Smruti Patel', 1, 85000, '2017=04-15');

-----Add foreign key in employee table-----

ALTER TABLE employees ADD CONSTRAINT FK_departments FOREIGN KEY(dep_id)
REFERENCES departments(dep_id);
