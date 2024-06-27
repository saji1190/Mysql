-- get the list of departments
SELECT * FROM departments;

-- retrieve the department ID and name for each department
SELECT dept_no ,  dept_name FROM departments;

-- retrieve the department ID and name for specific department (d009)
SELECT dept_no ,  dept_name FROM departments WHERE dept_no  =  'd009';