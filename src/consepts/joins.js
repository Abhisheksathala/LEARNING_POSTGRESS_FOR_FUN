const db = require('./../db/db.js');

async function getusersWithPosts() {
  const getuserwithpostsQuery = `
  SELECT users.id, users.username,posts.title
  FROM users
  INNER JOIN posts ON users.id = posts.user_id
  `;
  try {
    const res = await db.query(getuserwithpostsQuery);
    if (res && res.rows && res.rows.length > 0) {
      console.log('All users:');
      return res.rows[0];
    } else {
      console.log('No users found');
    }
  } catch (error) {
    console.log(error);
  }
}


async function getalluserandtherposts()
{
  const getallusersandtherpostss = `
  SELECT users.id, users.username,posts.title
  FROM users
  LEFT JOIN posts ON users.id = posts.user_id
  `

  try {

const res = await db.query(getallusersandtherpostss)
return res.rows
  } catch (error) {
    console.log(error)
  }
}

module.exports = { getusersWithPosts,getalluserandtherposts };
