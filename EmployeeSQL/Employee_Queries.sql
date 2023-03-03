-- 1. list the employee number, last name, first name, sex and salary of each employee
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", e.sex AS "Sex", s.salary AS "Salary"
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;


-- 2. list the first name, last name and hire date for the employees who were hired in 1986
SELECT e.first_name AS "First Name", e.last_name AS "Last Name", e.hire_date AS "Date of Hire"
FROM employees AS e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. list the manager of each department along with their department number, department name, 
-- employee number, last name and first name
SELECT m.dept_no AS "Department Number", d.dept_name AS "Department Name", t.title AS "Title", e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name"
FROM dept_manager AS m
INNER JOIN departments AS d ON
m.dept_no = d.dept_no
INNER JOIN employees AS e ON
m.emp_no = e.emp_no
INNER JOIN titles AS t ON
e.emp_title_id = t.title_id;

-- 4. list the department number for each employee along with that employee's employee number,
-- last name, first name and department name
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name "First Name", d.dept_name AS "Department Name"
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
de.dept_no = d.dept_no;

-- 5. list the first name, last name and sex of each employee whose first name is Hercules and
-- whose name begins with the letter B
SELECT e.first_name AS "First Name", e.last_name AS "Last Name", e.sex AS "Sex"
FROM employees AS e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE 'B%'

-- 6. list eachemployee in the sales department, including their employee number, last name 
-- and first name
SELECT d.dept_name AS "Department Name", e.emp_no AS "Employee Name", e.last_name AS "Last Name", e.first_name AS "First Name"
FROM employees AS e 
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7. list each employee in the sales and development departments, including their employee number, 
-- last name, first name and department name
SELECT e.emp_no AS "Employee Number", e.last_name AS "Last Name", e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development')

-- 8. list the frequency counts, in descending order, of all the employee last names
SELECT e.last_name AS "Last Name", COUNT(*)
FROM employees AS e
GROUP BY e.last_name
ORDER BY COUNT DESC



