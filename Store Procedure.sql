CREATE PROCEDURE large_salary()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salary();

DELIMITER $$
CREATE PROCEDURE largest_salaries()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$

CALL largest_salaries()