SELECT Students.first_name, Students.last_name, Grades.grade
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id;
