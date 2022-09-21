SELECT count(assistance_requests.*) as total_assistances, teachers.name as name
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name; 

-- teachers.name as name

-- JOIN teachers ON assistance_requests.teacher_id = teachers.id
-- WHERE teachers.name = 'Waylong Boehm'
-- GROUP BY name;