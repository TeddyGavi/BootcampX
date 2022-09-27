const {pool} = require("./pool")
const input = process.argv.splice(2);

const queryString = `
SELECT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = $1
GROUP BY teacher, cohort
ORDER BY teacher
`;

const cohortDate = input[0] || 'JUL02';
const values =[`${cohortDate}`]


pool.query(queryString, values)

  .then(res => {
    console.log(`Connected, searching DB...`)
    res.rows.forEach(x => {
      console.log(`${x.cohort}: ${x.teacher}`)
    })
  })
  .catch(err => console.error(`query error`, err.stack))