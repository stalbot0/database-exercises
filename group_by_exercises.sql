USE ymir_employees;
# use DISTINCT to find the unique titles in the titles table
SELECT DISTINCT title FROM titles;

# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows
SELECT CONCAT(first_name, ' ', last_name) AS unique_name_combo,
       COUNT(*) AS unique_name_combo_count
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'.
SELECT last_name, COUNT(*) AS count_last_name
FROM employees
WHERE (last_name LIKE '%q%'
    AND last_name NOT LIKE '%qu%')
GROUP BY last_name
# HAVING count_last_name > 175
ORDER BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT COUNT(*) AS count_gender, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;