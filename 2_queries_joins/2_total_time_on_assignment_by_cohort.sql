SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id 
JOIN cohorts ON cohorts.id = cohort_id 
WHERE cohorts.name = 'FEB12';


-- testing HAVING
-- SELECT students.name, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date is NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;