USE ymir_employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees e
WHERE hire_date IN (
    SELECT e2.hire_date
    FROM employees e2
    WHERE e2.emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
SELECT t.title `Titles held by employees with first name Aamod`
FROM titles t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE e.first_name = 'Aamod'
);

SELECT t.title `Titles held by employees with first name Aamod`
FROM titles t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE e.first_name = 'Aamod'
    )
GROUP BY t.title;

# Find all the current department managers that are female.
SELECT CONCAT(e.first_name, ' ', e.last_name) `Current Female Department Managers`
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
WHERE e.emp_no = (
    SELECT s.emp_no
    FROM salaries s
    ORDER BY s.salary DESC
    LIMIT 1
    );
#     WHERE salary = (
#         SELECT MAX(salary)
#         FROM salaries
#         )
#     )