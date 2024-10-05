DELIMITER $$ 
CREATE PROCEDURE AddStudent(
IN p_first_name VARCHAR(50),
IN p_last_name VARCHAR(50),
IN p_birth_date DATE
)
BEGIN
 INSERT INTO TotalStudents(first_name,last_name,birth_date)
 VALUES (p_first_name,p_last_name,p_birth_date);
END $$ 
 DELIMITER ;



