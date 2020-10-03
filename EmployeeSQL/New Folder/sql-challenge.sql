--Data Analysis
--question 1
SELECT emp.employee_number, emp.first_name, emp.last_name, emp.sex, salaries.salary
FROM employees as emp
Join salaries on (emp.employee_number = salaries.employee_number);

'question 2'
SELECT emp.first_name, emp.last_name, emp.hire_date
FROM employees as emp
WHERE emp.hire_date BETWEEN '1986-01-01' AND '1986-12-31';
--question 3
SELECT dep.department_number, dep.department_name, dm.employee_number, emp.first_name, emp.last_name
FROM departments as dep
Join department_managers AS dm on (dep.department_number = dm.department_number)
Join employees AS emp on (dm.employee_number = emp.employee_number);
--question 4

SELECT  dep.department_name, emp.employee_number, emp.first_name, emp.last_name 
FROM employees as emp
Join department_employees AS d on (d.employee_number = emp.employee_number)
Join departments AS dep on (dep.department_number = d.department_number);
--question 5

SELECT first_name, last_name,sex,birth_date
FROM employees 
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--question 6
SELECT  dep.department_name, emp.employee_number, emp.first_name, emp.last_name 
FROM employees as emp
Join department_employees AS d on (d.employee_number = emp.employee_number)
Join departments AS dep on (dep.department_number = d.department_number)
WHERE dep.department_name = 'Sales'

--question 7
SELECT  dep.department_name, emp.employee_number, emp.first_name, emp.last_name 
FROM employees as emp
Join department_employees AS d on (d.employee_number = emp.employee_number)
Join departments AS dep on (dep.department_number = d.department_number)
WHERE dep.department_name = 'Sales' or dep.department_name = 'Development'

--question 8
SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
