USE ymir_employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE e.emp_no = 10010;

# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
        JOIN dept_manager AS dm
            ON d.dept_no = dm.dept_no
        JOIN employees AS e
            ON dm.emp_no = e.emp_no
WHERE YEAR(dm.to_date) = 9999
GROUP BY d.dept_name;

# Find the name of all departments currently managed by women
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
         JOIN dept_manager AS dm
            ON d.dept_no = dm.dept_no
         JOIN employees AS e
            ON dm.emp_no = e.emp_no
WHERE YEAR(dm.to_date) = 9999
    AND e.gender = 'F'
GROUP BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'Job Title',
       COUNT(*) AS 'Total Employees'
FROM titles t
        JOIN dept_emp de
            ON t.emp_no = de.emp_no
        JOIN departments d
            ON d.dept_no = de.dept_no
WHERE YEAR(de.to_date) = 9999
  AND YEAR(t.to_date) = 9999
    AND d.dept_no = 'd009'
GROUP BY t.title
ORDER BY COUNT(*) DESC;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM departments AS d
         JOIN dept_manager dm
            ON d.dept_no = dm.dept_no
         JOIN employees e
            ON dm.emp_no = e.emp_no
        JOIN salaries s
            ON s.emp_no = e.emp_no
WHERE YEAR(dm.to_date) = 9999
    AND YEAR(s.to_date) = 9999
GROUP BY d.dept_name;

# Find the names of ALL current employees, their department name, and their current manager's name
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee',
       d.dept_name AS 'Department',
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Department Manager'
FROM employees e
        JOIN dept_emp de
            ON e.emp_no = de.emp_no
        JOIN departments d
            ON de.dept_no = d.dept_no
        JOIN dept_manager dm
            ON dm.dept_no = d.dept_no
        JOIN employees e2
            ON e2.emp_no = dm.emp_no
WHERE YEAR(de.to_date) = 9999
    AND YEAR(dm.to_date) = 9999
#     AND YEAR(t.to_date) = 9999
ORDER BY d.dept_name, e.emp_no;

# ///////////////////////////////////////////////////////////////
# THIS IS FROM THE JOIN DATABASE EXAMPLE FOR YMIR_STEPHEN SCHEMA
# USE ymir_stephen;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
#          JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
#          LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
#          RIGHT JOIN roles ON users.role_id = roles.id;
#
# SELECT r.name AS 'Role', COUNT(r.name) AS '# of users in role'
# FROM roles r
#          JOIN users u ON r.id = u.role_id
# GROUP BY r.name;