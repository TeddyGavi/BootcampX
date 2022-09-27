
const {pool} = require("./pool");
const input = process.argv.splice(2)
// console.log(input[0], input[1]);

pool.query(`
SELECT students.id AS students_id, students.name AS name, cohorts.name AS cohort
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id 
WHERE cohorts.name LIKE '%${input[0]}%'
LIMIT ${input[1]};
`)
.then(res => {
  console.log(res.rows);
  for (const ele of res.rows) {
    console.log(`${ele.name} has an id of ${ele.students_id} and was in the ${ele.cohort} cohort`)
  }
})
.catch(err => console.error('query error', err.stack));