USE student_management;
SELECT TotalStudents.first_name, TotalStudents.last_name, Courses.course_name
FROM Grades
JOIN TotalStudents ON Grades.student_id = TotalStudents.student_id
JOIN Courses ON Grades.course_id = Courses.course_id
WHERE TotalStudents.student_id = 1;
