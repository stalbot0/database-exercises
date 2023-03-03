USE ymir_employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE e.emp_no = 10010;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name + ' ' + e.last_name) AS 'Department Manager'
FROM departments AS d
        JOIN dept_manager AS dm
            ON d.dept_no = dm.dept_no
        JOIN employees AS e
            ON dm.emp_no = e.emp_no
WHERE YEAR(dm.to_date) = 9999
GROUP BY d.dept_name;




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