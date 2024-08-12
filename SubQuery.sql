SELECT *
FROM employee_demographics
WHERE employee_id IN (
	SELECT employee_id
	FROM employee_salary
	WHERE dept_id = 3
)

SELECT first_name, salary,
(
SELECT AVG(salary) 
FROM employee_salary
) AS Average_salary
FROM employee_salary