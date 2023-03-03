USE ymir_employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT CONCAT(first_name, ' ', last_name) `Full Name`, hire_date `Hire Date`
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
SELECT title `Titles held by employees with first name Aamod`
FROM titles
WHERE emp_no IN (
    SELECT employees.emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT title `Titles held by employees with first name Aamod`
FROM titles
WHERE emp_no IN (
    SELECT employees.emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
GROUP BY title;

# Find all the current department managers that are female.
SELECT CONCAT(e.first_name, ' ', e.last_name) `Department Manager`
FROM employees e
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager dm
    WHERE YEAR(dm.to_date) = 9999
        AND e.gender = 'F'
    );

# Find all the department names that currently have female managers.
SELECT d.dept_name `Department's w/ Female Managers`
FROM departments d
WHERE d.dept_no IN (
    SELECT dm.dept_no
    FROM dept_manager dm
        JOIN employees e
            ON dm.emp_no = e.emp_no
    WHERE e.gender = 'F'
        AND YEAR(dm.to_date) = 9999
    );

# Find the first and last name of the employee with the highest salary.
SELECT CONCAT(e.first_name, ' ', e.last_name) `Employee with highest salary`
FROM employees e
WHERE e.emp_no IN (
    SELECT s.emp_no
    FROM salaries s
    WHERE salary = (
        SELECT MAX(salary)
        FROM salaries
        )
    )
LIMIT 1;