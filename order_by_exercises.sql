USE ymir_employees;
#Male employees with first names Irena, Vidya, or Maya in Ascending order
SELECT first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

#Employees last name starts and ends with E
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;

#Employees last name that has 'q' but not 'qu'
# SELECT first_name, last_name
# FROM employees
# WHERE last_name LIKE '%q%'
#   AND last_name NOT LIKE '%qu%';