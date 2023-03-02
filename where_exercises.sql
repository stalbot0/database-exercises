#1 Use employee db
USE ymir_employees;

#2 First names are Irena, Vidya, or Maya
SELECT first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

#3 Last names begin with 'e'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';

#3 Last name has 'q'
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name != '%qu%';


#PART TWO
#Refactored #1 and #2 (used OR instead of IN, added M gender)
SELECT first_name, last_name, gender
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
  AND gender = 'M';

#Refactored #2 (last name starts OR ends with E)
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  OR last_name LIKE '%E';

#Refactored #2 (last name starts AND ends with E)
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

#Refactored #3 (last name that has q but not qu)
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

