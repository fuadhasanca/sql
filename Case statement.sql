SELECT first_name,last_name, salary,
CASE
	WHEN salary < 50000 THEN salary*1.05
	WHEN salary > 50000 THEN salary*1.07
END AS New_Salary
FROM employee_salary

SELECT employee_id,first_name,occupation,dept_id,salary,
CASE 
	WHEN dept_id = 6 THEN salary*.10
END AS BONUS
FROM employee_salary