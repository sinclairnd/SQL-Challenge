-- QUESTION 1
SELECT employees.emp_no AS "employee number",
	last_name AS "last name",
	first_name AS "first name",
	sex,
	salary
FROM employees
	INNER JOIN salaries
		ON salaries.emp_no = employees.emp_no

-- QUESTION 2
SELECT first_name AS "first name",
	last_name AS "last name",
	hire_date AS "hire date"
FROM employees
WHERE DATE_PART('year', hire_date) = '1986'

-- QUESTION 3
SELECT dept_manager.dept_no AS "department number",
	dept_name AS "department name",
	dept_manager.emp_no AS "employee number",
	last_name AS "last name",
	first_name AS "first name"
FROM dept_manager
	INNER JOIN departments
		ON departments.dept_no = dept_manager.dept_no
	INNER JOIN employees
		ON employees.emp_no = dept_manager.emp_no
	
-- QUESTION 4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees as "employees"
INNER JOIN dept_emp AS de
ON(employees.emp_no = de.emp_no)
INNER JOIN departments AS departments
ON (departments.dept_no = departments.dept_no)
ORDER BY employees.emp_no;

-- QUESTION 5
SELECT first_name AS "first name",
	last_name AS "last name",
	sex
FROM employees
WHERE first_name = 'Hercules'
	AND LEFT(last_name, 1) = 'B'

-- QUESTION 6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees as "employees"
INNER JOIN dept_emp as "dept_emp"
ON(employees.emp_no = dept_emp.emp_no)
INNER JOIN departments as "departments"
ON (dept_emp.dept_no = departments.dept_no)
ORDER BY employees.emp_no

-- QUESTION 7
SELECT employees.emp_no AS "employee number",
	first_name AS "first name",
	last_name AS "last name",
	dept_name AS "department name"
FROM employees
	INNER JOIN dept_emp
		ON dept_emp.emp_no = employees.emp_no
	INNER JOIN departments
		ON departments.dept_no = dept_emp.dept_no
WHERE dept_name IN ('Sales', 'Development')

-- QUESTION 8
SELECT last_name AS "last name",
	COUNT(*) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" DESC