SELECT Courses.course_name , COUNT(Grades.student_id) AS student_count
FROM Courses
LEFT JOIN Grades ON Courses.course_id = Grades.course_id
GROUP BY Courses.course_name 
ORDER BY Courses.course_name ASC;


