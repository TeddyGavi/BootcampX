
const {pool} = require("./pool");
const input = process.argv.splice(2)
console.log(input);

const queryString = `
  SELECT students.id as student_id, students.name as name, cohorts.name as cohort
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name LIKE $1
  LIMIT $2;
  `;

  const cohortName = process.argv[2] || 'FEB';
  const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`, limit];

pool.query(queryString, values)
.then(res => {
  console.log(res.rows);
  for (const ele of res.rows) {
    console.log(`${ele.name} has an id of ${ele.student_id} and was in the ${ele.cohort} cohort`)
  }
})
.catch(err => console.error('query error', err.stack));