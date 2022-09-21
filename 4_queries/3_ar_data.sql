SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at)  as duration
FROM assistance_requests
JOIN assignments ON assignments.id = assistance_requests.assignment_id
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
ORDER BY duration ASC;
