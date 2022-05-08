-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- Retrieve the title, from_date, and to_date columns from the Titles table.
-- Create a new table using the INTO clause.
-- Join both tables on the primary key.
-- Filter the data on the birth_date column to retrieve the employees who were born 
-- between 1952 and 1955. Then, order by the employee number.
-- Export the Retirement Titles table from the previous step as retirement_titles.csv and
-- save it to your Data folder in the Pewlett-Hackard-Analysis folder.


SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    ti.title,
    ti.from_date,
    ti.to_date
    
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
    on ti.emp_no = e.emp_no

WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no ASC;

-- SELECT DISTINCT ON (______) _____,
-- ______,
-- ______,
-- ______

-- INTO nameyourtable
-- FROM _______
-- WHERE _______
-- ORDER BY _____, _____ DESC;


-- Copy the query from the Employee_Challenge_starter_code.sql and 
-- add it to your Employee_Database_challenge.sql file.
-- Retrieve the employee number, first and last name, and 
-- title columns from the Retirement Titles table.
-- These columns will be in the new table that will hold 
-- the most recent title of each employee.
-- Use the DISTINCT ON statement to retrieve the first occurrence of the employee 
-- number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE to_date = ('9999-01-01')
ORDER BY emp_no; 

SELECT * FROM unique_titles

SELECT COUNT(ut.emp_no), 
			 ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles

-------------------------------------------------

-- - Retrieve the emp_no, first_name, last_name, 
-- and birth_date columns from the Employees table.
-- - Retrieve the from_date and to_date columns 
-- from the Department Employee table.
-- - Retrieve the title column from the Titles table.
-- - Use a DISTINCT ON statement to retrieve the 
-- first occurrence of the employee number for 
-- each set of rows defined by the ON () clause.
-- - Create a new table using the INTO clause.
-- - Join the Employees and the Department Employee
-- tables on the primary key.
-- -Join the Employees and the Titles tables on 
-- the primary key.
-- -Filter the data on the to_date column to all 
-- the current employees, then filter the data on 
-- the birth_date columns to get all the employees 
-- whose birth dates are between January 1, 1965 and December 31, 1965.
-- -Order the table by the employee number.
-- -Export the Mentorship Eligibility table as 
-- mentorship_eligibilty.csv and save it to your 
-- Data folder in the Pewlett-Hackard-Analysis folder.


SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title

INTO mentorship_eligibility
FROM employees as e 
INNER JOIN dept_emp as de
ON de.emp_no = e.emp_no
INNER JOIN titles as ti
ON ti.emp_no = e.emp_no

WHERE 1=1 
AND birth_date BETWEEN '1965-01-01' AND '1965-12-31'
AND de.to_date = '9999-01-01'


SELECT * FROM mentorship_eligibility




-- mentorship titles table = how many employees eligible for mentorship program by title\
SELECT COUNT(me.emp_no), 
			 me.title
INTO mentorship_titles
FROM mentorship_eligibility as me
GROUP BY title
ORDER BY COUNT(title) DESC;


SELECT * FROM mentorship_titles
