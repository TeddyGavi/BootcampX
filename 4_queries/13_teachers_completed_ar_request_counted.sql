SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*) as total_assistances
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;