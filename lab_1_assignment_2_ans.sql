-- Alias and Concatenation:

-- 1. Write a query to retrieve a list of employee names along with their concatenated full names (first name + last name), and alias the column as "Full Name."

SELECT FIRST_NAME, LAST_NAME, FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME FROM HR.EMPLOYEES;


-- 2. Retrieve a list of employees with their first name, last name, and a concatenated string that includes their first name, a space, and the first three characters of their last name. Alias the concatenated string as "Abbreviated Name."

SELECT FIRST_NAME, LAST_NAME, FIRST_NAME || ' ' || SUBSTR(LAST_NAME, 1, 3) AS ABBR_NAME FROM HR.EMPLOYEES;


-- 3. Write a query to display the employee IDs, first names, and last names of employees who have the letter 'e' in their first name. Concatenate the first name and last name, and alias the result as "Full Name."

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME FROM HR.EMPLOYEES WHERE LOWER(FIRST_NAME) LIKE '%e%';

-- 4. Retrieve the employee details with their employee ID, last name, and a concatenated string that includes the last two digits of their employee ID, followed by a hyphen, and the first three characters of their last name. Alias this string as "ID-Name."

SELECT EMPLOYEE_ID, LAST_NAME, SUBSTR(EMPLOYEE_ID, -2, 2) || '-' || SUBSTR(LAST_NAME, 1, 3) AS ID_NAME FROM HR.EMPLOYEES WHERE LOWER(FIRST_NAME_ LIKE '%e%';


-- 5. Display the employee IDs, first names, and last names in a single column. The result should include the employee ID, followed by a hyphen, the first two characters of the first name, another hyphen, and the last two characters of the last name. Alias this column as "Custom ID."

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMPLOYEE_ID || '-' || SUBSTR(FIRST_NAME, 1, 2) || '-' || SUBSTR(LAST_NAME, -2, 2) AS CUSTOM_ID FROM HR.EMPLOYEES;


-- Filtering. Relational Operators and Logical Operators:

-- 1. Retrieve the employee details (employee_id, first_name, last_name, hire_date) of those who were hired after employee with ID 100, and their salary is greater than or equal to 5000.

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE from HR.EMPLOYEES WHERE HIRE_DATE > (SELECT HIRE_DATE FROM HR.EMPLOYEES WHERE EMPLOYEE_ID = 100) AND SALARY >= 5000;


-- 2. Write a query to display the employee details (employee_id, first_name, last_name) of employees who are either in department 20 or have a salary greater than 8000.

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME from HR.EMPLOYEES WHERE DEPARTMENT_ID = 20 OR SALARY > 8000;


-- 3. Write a query to display the employee IDs, first names, and last names of employees who have a salary greater than 6000 or were hired before the year 2000.

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME FROM HR.EMPLOYEES WHERE SALARY > 6000 OR HIRE_DATE < '01-JAN-2000'


-- 4. Retrieve the employee details (employee_id, first_name, last_name) of employees who do not have a manager (i.e., manager_id is NULL) and have a job title that contains the word 'CLERK.'

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME FROM HR.EMPLOYEES WHERE MANAGER_ID IS NULL AND JOB_ID LIKE '%CLERK%';


-- 5. Display the employee details (employee_id, first_name, last_name, salary) for employees who either have a salary greater than 8000 or belong to department 30 and were hired after the year 2005.

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY FROM HR.EMPLOYEES WHERE SALARY > 8000 OR (DEPARTMENT_ID = 30 AND HIRE_DATE > '31-DEC-2005');
