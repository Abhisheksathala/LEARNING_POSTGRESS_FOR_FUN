const db = require('./../db/db.js');

async function createuserTable() {
  const createUserTables = sql`
CREATE TABLE IF NOT EXISTS users(
  id SERIAL PRIMERY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
)`;
  try {
    await db.query(createUserTables);
    console.log('user table created successfully');
  } catch (error) {
    console.error('there is an error', error);
  }
}

async function insertUser(username, email) {
  const insertUserQuery = sql`
    INSERT INTO users (username, email)
    VALUES ($1, $2)
    RETURNING *
  `;

  try {
    const res = await db.query(insertUserQuery, [username, email]);
    console.log(res.rows[0]);
    console.log('user inserted successfully');
  } catch (error) {
    console.error('error while creating user table', error.message);
  }
}

async function fetchAllUsers() {
  const getallusers = sql`
  SELECT * FROM users
  `;
  try {
    const res = await db.query(getallusers);

    console.log('all user has been successfully', res);
    console.log(res.rows);
  } catch (error) {
    console.error('there is an error', error);
    return;
  }
}

async function updateuser(username, newemail) {
  const updateuserQuery = sql`
    UPDATE  users
    set email = $2
    where username  = $1
    `;
  try {
    const updateuser = await db.query(updateuserQuery, [username, newemail]);
    console.log('update is succesfull');
    console.log(updateuser.rows);
  } catch (error) {
    console.log(error);
  }
}

async function deleteInfo(username) {
  const deletUserQuery = `
        DELETE FROM users
        WHERE username = $1
        RETURNING *
        `;

  try {
    const deletuser = await db.query(deletUserQuery, [username]);

    if (!deletuser) {
      console.log('no user found');
    }

    console.log('user delted sccc ', deletuser);
  } catch (error) {
    console.log(error);
  }
}

module.exports = {
  createuserTable,
  insertUser,
  fetchAllUsers,
  updateuser,
  deleteInfo,
};

// async function createUsersTable() {
//   const createTableQuery = `
//     CREATE TABLE IF NOT EXISTS users (
//       id SERIAL PRIMARY KEY,
//       username VARCHAR(50) UNIQUE NOT NULL,
//       email VARCHAR(255) UNIQUE NOT NULL,
//       created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
//     )
//   `;
//   try {
//     await query(createTableQuery);
//     console.log('user table created successfully');
//   } catch (error) {
//     console.error('Error creating user table:', error);
//   }
// }

// async function insertuser(username, email) {
//   const insertUserQuery = `
//     INSERT INTO users (username, email)
//     VALUES ($1, $2)
//     RETURNING *
//   `;

//   try {
//     const res = await query(insertUserQuery, [username, email]);

//     if (res && res.rows && res.rows.length > 0) {
//       console.log('User inserted successfully:', res.rows[0]);
//     } else {
//       console.log('User insertion skipped or failed.');
//     }
//   } catch (error) {
//     console.error('Error inserting user:', error);
//   }
// }

// async function getallusers() {
//   const getAllUsersQuery = `SELECT * FROM users`;

//   try {
//     const result = await query(getAllUsersQuery);
//     console.log('All users:');
//     return result;
//   } catch (error) {
//     console.error('Error getting all users:', error);
//   }
// }

// async function updateuseremail(username, email) {
//   const updateUserEmailQuery = `
//     UPDATE users
//     SET email = $2
//     WHERE username = $1
//     RETURNING *
//   `;

//   try {
//     const result = await query(updateUserEmailQuery, [username, email]);

//     if (result && result.rows && result.rows.length > 0) {
//       console.log('User email updated successfully:', result.rows[0]);
//       return result.rows[0];
//     } else {
//       console.log('User not found');
//     }
//   } catch (error) {
//     console.error('Error updating user email:', error);
//   }
// }

// async function deleteuser(username) {
//   const deleteUserQuery = `
//     DELETE FROM users
//     WHERE username = $1
//     RETURNING *
//   `;

//   try {
//     const result = await query(deleteUserQuery, [username]);

//     if (result && result.rows && result.rows.length > 0) {
//       console.log('User deleted successfully:', result.rows[0]);
//     } else {
//       console.log('Delete user not found');
//     }
//   } catch (error) {
//     console.error('Error deleting user:', error);
//   }
// }

// export { createUsersTable, insertuser, getallusers, updateuseremail, deleteuser };
