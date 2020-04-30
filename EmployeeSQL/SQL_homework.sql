--1 List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no,employees.last_name,employees.first_name,employees.gender,salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no;

--2 List employees who were hired in 1986.

SELECT * 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT managers.dept_no,departments.dept_name,managers.emp_no,employees.last_name,employees.first_name,managers.from_date,managers.to_date
FROM managers
INNER JOIN departments ON departments.dept_no=managers.dept_no
INNER JOIN employees ON employees.emp_no=managers.emp_no

--4 List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employees.emp_no,employees.last_name,employees.first_name, departments.dept_name
FROM employees
INNER JOIN departments ON departments.dept_no = employees.dept_no

--5 List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name,last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6 List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM employees
INNER JOIN departments ON departments.dept_no = employees.dept_no
WHERE departments.dept_name='Sales'

--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM employees
INNER JOIN departments ON departments.dept_no = employees.dept_no
WHERE departments.dept_name='Sales' OR departments.dept_name ='Development';

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS "Counting"
FROM employees
GROUP BY last_name
ORDER BY "Counting" DESC;