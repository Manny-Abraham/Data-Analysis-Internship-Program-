-- STORED PROCEDURES
 
 SELECT *
 FROM employee_salary
 WHERE salary >= 50000;

 CREATE PROCEDURE Large_Salaries()
 SELECT *
 FROM employee_salary
 WHERE salary >= 50000;
 
 CALL Large_Salaries();
 
 DELIMITER $$
  CREATE PROCEDURE Large_Salaries2()
  BEGIN
 SELECT *
 FROM employee_salary
 WHERE salary >= 50000;
  SELECT *
 FROM employee_salary
 WHERE salary >= 10000;
 END $$
 DELIMITER ;
 
 CALL Large_Salaries2();
 
  DELIMITER $$
  CREATE PROCEDURE Large_Salaries3 (employee_id INT)
  BEGIN
    SELECT salary
	FROM employee_salary
     WHERE employee_id = p_employee_id
 ;
 END $$
 DELIMITER ;
 
 CALL Large_Salaries3(4);
 
DELIMITER $$
 CREATE PROCEDURE Large_Salaries4(p_employee_id INT)
 BEGIN
 SELECT salary
 FROM employee_salary
 WHERE employee_id = p_employee_id
 ;
 END $$
 DELIMITER ;
 
 CALL Large_Salaries4(8);
 
 