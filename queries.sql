/* Queries */

-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT s.emp_no, e.last_name, e.first_name, e.sex, s.salaries
FROM employees AS e
INNER JOIN salaries AS s
ON s.emp_no = e.emp_no
ORDER BY s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT (year FROM hire_date) = '1986'

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT DISTINCT ON (mg.dept_no) mg.dept_no, d.dept_no, e.last_name, e.first_name  
FROM dept_manager AS mg
INNER JOIN departments AS d
ON mg.dept_no = d.dept_no
INNER JOIN employees AS e
ON mg.emp_no = e.emp_no
ORDER BY mg.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments as d
ON d.dept_no = de.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, d.dept_name, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, d.dept_name, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name ='Development'
ORDER BY d.dept_name ASC;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;