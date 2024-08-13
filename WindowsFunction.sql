--Without Window functions--
SELECT gender, AVG(salary) AS Avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender


--using window functions--
SELECT dem.first_name,gender,salary, 
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id

--row_number() rank() dense_rank()--

SELECT dem.first_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id