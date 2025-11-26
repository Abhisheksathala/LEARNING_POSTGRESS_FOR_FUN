const db = require('./../db/db.js');

// WHERE clause

async function getUsersWhere(condition) {
  const getuserQuery = `
  SELECT * FROM users
  WHERE ${condition}
  `;

  try {
    const res = await db.query(getuserQuery);

    return res.rows;
  } catch (error) {
    console.log(error);
  }
}

async function getSortedUsers(column, order ) {
  // ⚠️ Avoid putting user input directly if column comes from user
  // Here assuming trusted column names
  const getsorteduserQuery = `
    SELECT * FROM users
    ORDER BY ${column} ${order};
  `;

  try {
    const sorteddata = await db.query(getsorteduserQuery);
    console.log(sorteddata.rows);
    return sorteddata.rows;
  } catch (error) {
    console.log(error);
  }
}

async function pagenationatedUsers(limit, offset) {
  const getpaginationQuery = `
  SELECT * FROM users
  LIMIT $1 OFFSET $2`;

  try {
    const res = await  db.query(getpaginationQuery, [limit, offset]);
    console.log("Query result:", res.rows);
    if (res && res.rows && res.rows > 0) {
      return res.rows[0];
    }else {
      return [];
    }
  } catch (error) {
   console.log("Database error:", error);
    return [];
  }
}

module.exports = { getUsersWhere, getSortedUsers, pagenationatedUsers };
