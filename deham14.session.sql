-- get the list of departments
SELECT * FROM departments;

-- retrieve the department ID and name for each department
SELECT dept_no ,  dept_name FROM departments;

-- retrieve the department ID and name for specific department (d009)

SELECT dept_no,
       dept_name
FROM departments
WHERE dept_no = 'd009';

-- retrieve the department ID and name for specific department (d009)

SELECT dept_no 'Department Number',
       dept_name 'Department Name'
FROM departments
WHERE dept_name = 'Customer Service';

-- Retrieve top 10 records from the employees

SELECT *
FROM employees
LIMIT 10;

-- get the count of the employees in each department

SELECT dept_no,
       COUNT(*) 'Number of Employees'
FROM dept_emp
GROUP BY dept_no;

-- get the count of the employees from employees table

SELECT COUNT(*) 'Number of Employees'
FROM employees;

-- retrieve top 5 employee records
SELECT *
FROM employees
LIMIT 5;

-- retrieve first name and last from the employees table


SELECT first_name 'First Name',
       last_name 'Last Name'
FROM employees
LIMIT 5;

-- retrieve first name, last name and concatenate them using concat function using the data from the employees table
SELECT first_name 'First Name',
       last_name 'Last Name',
       CONCAT(first_name, ' ', last_name) 'Full Name'
FROM employees
LIMIT 5;

-- get the first name upper case and last name in lower case
SELECT UPPER(first_name) 'First Name',
       LOWER(last_name) 'Last Name'
FROM employees
LIMIT 5;

-- get sample 10 records from the salaries table
SELECT *
FROM salaries
LIMIT 10;

-- get the maximum salary, minimum salary and average salary from the salaries 
SELECT MAX(salary) 'Maximum Salary',
       MIN(salary) 'Minimum Salary',
       AVG(salary) 'Average Salary'
FROM salaries;

-- get the number of records from titles table
SELECT COUNT(*) 'Number of Titles'
FROM titles;

-- get the sample 5 records from the titles table
SELECT *
FROM titles
LIMIT 5;

-- get the list of titles without duplicates
SELECT DISTINCT title 'Title'
FROM titles;

-- get the current date and time
SELECT NOW();

-- get the current date, time, date and time and date which is 50 years from now ()
SELECT NOW(),
       CURDATE(),
       CURTIME(),
       ADDDATE(CURDATE(), INTERVAL 50 YEAR),
       ADDDATE(CURDATE(), INTERVAL 50 YEAR) 'Date in 50 years';

-- generate a report with employee number, first name, last name and salary

SELECT e.emp_no 'Employee Number',
       e.first_name 'First Name',
       e.last_name 'Last Name',
       s.salary 'Salary'
FROM employees e
         JOIN salaries s ON e.emp_no = s.emp_no
         -- LIMIT 10;










