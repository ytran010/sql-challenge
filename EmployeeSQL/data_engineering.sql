-- Create table for titles.csv
CREATE TABLE titles (
	title_id VARCHAR(255) NOT NULL PRIMARY KEY,
	title VARCHAR(255) NOT NULL
);

-- Visualize titles table
SELECT * FROM titles;

-- Create table for employees.csv
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR(255) NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(255) NOT NULL,
	hire_date VARCHAR(255) NOT NULL	
);

-- Visualize employees table
SELECT * FROM employees;

-- Create table for departments.csv
CREATE TABLE departments (
	dept_no VARCHAR(255) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(255) NOT NULL
);

-- Visualize departments table
SELECT * FROM departments;

-- Create table for dept_emp.csv
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Visualize dept_emp table
SELECT * FROM dept_emp;

-- Create table for dept_manager.csv
CREATE TABLE dept_manager (
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Visualize dept_manager table
SELECT * FROM dept_manager;

-- Create table for salaries.csv
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL
);

-- Visualize salaries table
SELECT * FROM salaries;

SELECT *
FROM titles
