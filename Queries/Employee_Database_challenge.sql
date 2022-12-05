-- Create New Table
SELECT emp_no, first_name, last_name
INTO retirement_employees
FROM employees

SELECT title, from_date, to_date
INTO title_dates
FROM titles

SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY employees.emp_no;
