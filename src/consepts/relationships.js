const db = require('./../db/db.js');

async function createPostTable() {
  const createTableQuery = `
    CREATE TABLE IF NOT EXISTS posts (
      id SERIAL PRIMARY KEY,
      title VARCHAR(255) NOT NULL,
      context TEXT NOT NULL,
      user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
      created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
    )
  `;
  try {
    const res = await db.query(createTableQuery);
    console.log('Post table created successfully');
    return res; // optional: return for further use
  } catch (error) {
    console.error('Error creating post table:', error);
    throw error; // optional: to handle it in a parent function
  }
}

async function insertNewPost(title, content, userId) {
  const insertPostQuery = `
    INSERT INTO posts (title, context, user_id)
    VALUES ($1, $2, $3)
    RETURNING *
  `;

  try {
    const res = await db.query(insertPostQuery, [title, content, userId]);
    return res.rows[0]; // Returns the inserted row
  } catch (error) {
    console.error('Error inserting new post:', error);
    throw error; // Optional: Re-throw for higher-level handling
  }
}

module.exports = { createPostTable, insertNewPost };
