DELIMITER $$ 
CREATE FUNCTION GetAverageGrade(p_student_id INT)
RETURNS DECIMAL (3,2)
DETERMINISTIC 
BEGIN 
  DECLARE Avg_Grade DECIMAL(3,2);
  SELECT AVG  ( CASE 
                    WHEN grade = 'A' THEN 4 
                    WHEN grade = 'B' THEN 3 
                    WHEN grade = 'C' THEN 2
                    WHEN grade = 'D' THEN 1
                    ELSE 0
			   END)
INTO Avg_Grade
FROM Grades 
WHERE student_id = p_student_id;
RETURN Avg_Grade;
END $$

DELIMITER $$
  
    