USE parks_and_recreation;

DELIMITER $$
CREATE EVENT delete_retiress1
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
    DELETE
	FROM employee_demographics
    WHERE age >= 60;
END $$ 


SELECT *
FROM employee_demographics;