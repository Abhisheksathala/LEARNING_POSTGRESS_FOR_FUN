const { Pool } = require('pg');

// create a new pool instance to manage database connections
// - > this pool will be used to connect to the database
// -> postgres -> :// -. [user] -> [password] -> @ -> host:port -> [database]

const pool = new Pool({
  connectionString: `postgres://postgres:9949@localhost:5432/postgress-basics`,
});

async function query(text, params) {
  const start = Date.now();

  try {
    let result = await pool.query(text, params);

    // excute the time

    const duration = Date.now() - start;

    console.log(`EXCUTED QUERY ${{ text, duration, row: result.rowCount }}`);

    return result
  } catch (error) {
    console.log(error);
    throw error;
  }
}

module.exports = {
  query,
};
