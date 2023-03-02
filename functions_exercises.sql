USE ymir_employees;
# Male employees with first names Irena, Vidya, or Maya in Ascending order
SELECT first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

# Employees last name starts and ends with E
SELECT emp_no, CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%E'
ORDER BY emp_no DESC;

# Employees born on christmas
SELECT first_name, last_name, birth_date
FROM employees
WHERE (MONTH(birth_date) = 12
  AND DAY(birth_date) = 25)
ORDER BY YEAR(birth_date) DESC;

# All employees hired in the 90's AND born on xmas
SELECT CONCAT(first_name, ' ', last_name), birth_date, hire_date, DATEDIFF(NOW(), hire_date)
FROM employees
WHERE (YEAR(hire_date) BETWEEN 1990 AND 1999
    AND MONTH(birth_date) = 12
    AND DAY(birth_date) = 25)
ORDER BY YEAR(birth_date) ASC, YEAR(hire_date) DESC;
