-- Trigger
DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id,first_name,last_name) 
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
END 
$$

INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id) 
VALUES(16, 'Abu', 'Sayed', 'Chairman', 2500000, NULL);

SELECT * 
FROM employee_salary;

SELECT * 
FROM employee_demographics;

DELETE 
FROM employee_salary
WHERE employee_id = 15