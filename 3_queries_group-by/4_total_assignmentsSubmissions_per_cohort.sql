SELECT cohorts.name as cohort, count(*) as total_submissions
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohort
ORDER BY total_submissions DESC;



-- cohorts.name as cohort,

-- JOIN assignment_submissions ON  assignment_submissions.id = assignment_submissions.student_id
-- JOIN students ON 