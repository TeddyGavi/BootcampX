SELECT cohorts.name as cohort, sum(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohort
ORDER BY total_duration;