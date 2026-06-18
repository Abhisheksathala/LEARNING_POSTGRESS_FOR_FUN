-- Drop the 'students' table under the 'basics' schema if it exists to start clean.
DROP TABLE IF EXISTS basics.students;

-- Create the 'students' table under the 'basics' schema.
CREATE TABLE basics.students (
  -- id: Auto-incrementing integer (SERIAL) that uniquely identifies each student (PRIMARY KEY).
  id SERIAL PRIMARY KEY,
  -- name: The name of the student, cannot be empty (NOT NULL).
  name TEXT NOT NULL,
  -- email: The email address, cannot be empty (NOT NULL) and must be unique across all students (UNIQUE).
  email TEXT NOT NULL UNIQUE,
  -- age: Integer value, must be 10 or older (CHECK constraint).
  age INTEGER CHECK(age >= 10),
  -- created_at: The timestamp when the record is created, defaulting to the current time (NOW()).
  created_at TIMESTAMP DEFAULT NOW()
);

-- Insert a new student record into the 'students' table.
INSERT INTO basics.students (name, email, age)
VALUES ('abhi', 'abhis@gmail.com', 22);

-- Query and retrieve all records (columns and rows) from the 'students' table.
SELECT * FROM basics.students;