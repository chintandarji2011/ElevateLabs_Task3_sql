/*------------ Step1. Use Select* and specific columns------------*/
-- Retrive data from `department` table
SELECT * FROM departments;
-- Retrive data from `employees` table
SELECT * FROM employees;

-- retrive selected columns from both table with secific condition
SELECT e.emp_id, e.emp_name,d.dep_name, e.salary, e.hire_date
FROM employees e
INNER JOIN departments d ON e.dep_id = d.dep_id;
/*---------- Step2.Apply WHERE, AND, OR, LIKE, BETWEEN --------------*/
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
/* ----------------- Step3.Sort with ORDER BY -------------------*/
-- Ascending
SELECT * FROM employees
ORDER BY salary;
-- Descending
SELECT * FROM employees
ORDER BY salary DESC;
-- LIMIT -- Top two highest salary
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 2;
