# ElevateLabs_Task3_sql
Author- Darji Chintankumar Dineshchandra
<br>
Email: chintandarji2011@gmail.com
# Task 3: Writing Basic SELECT Queries

## Objective
The goal of this task is to practice extracting data from one or more tables using SQL queries. You will learn how to filter, sort, and limit data results using fundamental SQL clauses such as `SELECT`, `WHERE`, `ORDER BY`, and `LIMIT`.

---

## Tools Used
- **DB Browser for SQLite**
- **MySQL Workbench**

---
## Sample Table Used

```sql
CREATE TABLE departments
(
  dep_id INT PRIMARY KEY,
  dep_name VARCHAR(50) NOT NULL
);
CREATE TABLE employees
(
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50) NOT NULL,
  dep_id INT,
  salary decimal(10,2),
  hire_date DATE
);

INSERT INTO departments
VALUES 
(1,'HR'),(2,'Account'),(3,'IT');

INSERT INTO employees (emp_id, emp_name, dep_id, salary, hire_date)
VALUES
(1,'Rahesj Jadhav', 3, 60000, '2015-04-12'),
(2,'Krunal Patil', 3, 45000, '2022-05-23'),
(3,'Swami Rajnathan', 2, 34000, '2023-02-22'),
(4,'Harsh Sharma', 1, 75000, '2018-04-11'),
(5, 'Smruti Patel', 1, 85000, '2017=04-15');
```
> -- Add forein key in `employees` table for `departments` table's column `dep_id`
```sql
ALTER TABLE employees ADD CONSTRAINT FK_departments FOREIGN KEY(dep_id)
REFERENCES departments(dep_id);
```
---
## Deliverables
An SQL script demonstrating the use of:
- `SELECT` (all columns and specific columns)
  > Step1. Use `Select *` and `specific columns`

```sql
-- Retrive data from `department` table
SELECT * FROM departments;
-- Retrive data from `employees` table
SELECT * FROM employees;

-- retrive selected columns from both table with secific condition
SELECT e.emp_id, e.emp_name,d.dep_name, e.salary, e.hire_date
FROM employees e
INNER JOIN departments d ON e.dep_id = d.dep_id;
```
- `WHERE`, `AND`, `OR`, `LIKE`, `BETWEEN`
  > Step2.Apply `WHERE`, `AND`, `OR`, `LIKE`, `BETWEEN....AND`
```sql
-- WHERE + AND
SELECT e.emp_name, d.dep_name, e.salary, e.hire_date
FROM employees e
INNER JOIN departments d ON e.dep_id = d.dep_id
WHERE dep_name = 'IT' AND salary > 50000;
-- WHERE + OR
SELECT e.emp_name, d.dep_name, e.salary
FROM employees e
INNER JOIN departments d ON e.dep_id = d.dep_id
WHERE dep_name = 'HR' OR salary > 50000;
-- WHERE + LIKE
SELECT e.emp_name, d.dep_name, e.salary
FROM employees e
INNER JOIN departments d ON e.dep_id = d.dep_id
WHERE emp_name LIKE 'S%';
-- WHERE + BETWEEN
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 70000;
```
- `ORDER BY` for sorting
> Step3.Sort with `ORDER BY`
```sql
-- Ascending
SELECT * FROM employees
ORDER BY salary;
-- Descending
SELECT * FROM employees
ORDER BY salary DESC;
```
- `LIMIT` to restrict number of results
```sql
-- LIMIT -- Top two highst salary
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 2;
```


