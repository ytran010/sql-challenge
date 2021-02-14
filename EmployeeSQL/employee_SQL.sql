-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.last_name, e.sex, s.salary
FROM employees AS e
	JOIN salaries AS s
		ON e.emp_no = s.emp_no
;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM departments AS d
	JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
			JOIN employees as e
			ON e.emp_no = dm.emp_no;
		
-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments AS d
	JOIN dept_emp AS de
	ON d.dept_no = de.dept_no
		JOIN employees AS e
		ON e.emp_no = de.emp_no;
		
		
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex 
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT d.dept_name, de.dept_no, de.emp_no, dm.dept_no, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
	JOIN dept_emp AS de
	ON d

