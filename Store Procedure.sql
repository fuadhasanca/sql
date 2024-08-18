CREATE PROCEDURE large_salary1()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salary1()

DELIMITER $$
CREATE PROCEDURE largest_salary()
BEGIN
SELECT *
FROM employee_salary
WHERE salary >= 50000;
SELECT *
FROM employee_salary
WHERE salary >= 10000; 
END
$$

CALL largest_salary();


CREATE PROCEDURE single_person_salary3(param_employee_id INT)
SELECT *
FROM employee_salary
WHERE employee_id = param_employee_id;

CALL single_person_salary3(4);


DELIMITER $$
CREATE PROCEDURE person_salary_by_name(person_name varchar(50))
BEGIN
SELECT *
FROM employee_salary
WHERE first_name = person_name;
END
$$

CALL person_salary_by_name('Tom')

