SELECT Courses.course_name, AVG(CASE 
                                    WHEN Grades.grade = 'A' THEN 4
                                    WHEN Grades.grade = 'B' THEN 3
                                    WHEN Grades.grade = 'C' THEN 2
                                    WHEN Grades.grade = 'D' THEN 1
                                    ELSE 0
                                  END) AS average_grade
FROM Courses
JOIN Grades ON Grades.course_id = Courses.course_id
GROUP BY Courses.course_name;
