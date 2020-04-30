CREATE TABLE employees(
	emp_no INTEGER NOT NULL PRIMARY KEY,
	dept_no VARCHAR (100),
	birth_date DATE,
	first_name VARCHAR (100),
	last_name VARCHAR(100),
	gender VARCHAR (100),
	hire_date DATE
);

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL PRIMARY KEY,
	salary INTEGER NOT NULL,
	from_date DATE,
	to_date DATE
);

CREATE TABLE departments(
	dept_no VARCHAR(50) NOT NULL,
	dept_name VARCHAR(100)
);

CREATE TABLE managers(
	dept_no VARCHAR(100),
	emp_no INTEGER NOT NULL PRIMARY KEY,
	from_date DATE,
	to_date DATE
);

CREATE TABLE titles(
	emp_no  INTEGER NOT NULL,
	title VARCHAR (100),
	from_date DATE,
	to_date DATE
);