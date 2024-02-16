-- SELECT * FROM employees
-- SELECT * FROM salaries

-- FOR THOSE WHOSE SALARY IS MORE THAN 70000
-- SELECT employees.emp_no, CONCAT(first_name, ' ', last_name) AS full_name, salary, hire_date
-- FROM employees
-- LEFT JOIN salaries
-- ON employees.emp_no = salaries.emp_no
-- WHERE salary > 80000 AND DATEDIFF(hire_date, '1995-01-01') > 0

-- EACH EMPLOYEE WITH ITS DEPARTMENT
-- SELECT departments.dept_no, departments.dept_name, emp_no, full_name, from_date
-- FROM 
-- (
-- 	SELECT employees.emp_no, CONCAT(first_name, ' ', last_name) AS full_name, dept_no, dept_emp.from_date
-- 	FROM employees
-- 	LEFT JOIN dept_emp
-- 	ON employees.emp_no = dept_emp.emp_no
-- ) AS employees_hired
-- LEFT JOIN 
-- departments
-- ON employees_hired.dept_no = departments.dept_no

-- HOW MANY EMPLOYEES EACH DEPARTMENT HAS?
-- SELECT departments.dept_no, departments.dept_name, COUNT(*) AS no_employees
-- FROM 
-- (
-- 	SELECT employees.emp_no, dept_no
-- 	FROM employees
-- 	LEFT JOIN dept_emp
-- 	ON employees.emp_no = dept_emp.emp_no
-- ) AS employees_hired
-- LEFT JOIN 
-- departments
-- ON employees_hired.dept_no = departments.dept_no
-- GROUP BY departments.dept_no
-- HAVING no_employees > 70000

-- COST
SELECT departments.dept_no, departments.dept_name, SUM(dept_emp_salary.salary) AS cost
FROM departments 
LEFT JOIN (
SELECT dept_emp.dept_no, dept_emp.emp_no, salary
FROM dept_emp
LEFT JOIN (
SELECT employees.emp_no, salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
) AS salaries
ON dept_emp.emp_no = salaries.emp_no
) AS dept_emp_salary
ON departments.dept_no = dept_emp_salary.dept_no
GROUP BY departments.dept_no




