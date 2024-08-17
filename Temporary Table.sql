USE parks_and_recreation;

CREATE TEMPORARY Table temp_table
(
first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);

INSERT INTO temp_table VALUES(
'Fuad', 'Hasan', '3 Idiots'
);

SELECT *
FROM temp_table;

CREATE TEMPORARY TABLE SalaryEmployee50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM SalaryEmployee50k;