SELECT count(assistance_requests.*) as total_assistances, students.name as name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY name;