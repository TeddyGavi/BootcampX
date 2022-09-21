-- SELECT students.name as student, avg(assignments.duration) as average_assignment_duration
-- FROM assignments
-- JOIN assignment_submissions ON assignments.id = assignment_submissions.assignment_id
-- JOIN students ON students.id = assignment_submissions.student_id
-- WHERE students.end_date is NULL
-- GROUP BY students 
-- ORDER BY average_assignment_duration DESC;

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions on assignment_submissions.student_id = students.id
WHERE end_date is NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;