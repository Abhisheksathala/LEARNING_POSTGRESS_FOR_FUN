-- Drop the 'exp' table under the 'basics' schema if it exists.
DROP TABLE IF EXISTS basics.exp;

-- Create the 'exp' table to demonstrate NULL and empty string handling.
CREATE TABLE IF NOT EXISTS basics.exp (
   -- id: Unique identifier.
   id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
   -- nickname: Text column to hold the user's nickname.
   nickname TEXT,
   -- bio: Text column for user biography.
   bio TEXT,
   -- score: Numeric score, defined as INTEGER since we check equality with numbers.
   score INTEGER
);

-- Insert multiple records to test NULLs, empty strings, and zero values.
INSERT INTO basics.exp (nickname, bio, score)
VALUES
  (NULL, 'learning sql ', 10),
  ('', 'empty nick name', 20),
  ('sangaem', '', 0);

-- Query all records from the 'exp' table.
SELECT * FROM basics.exp;

-- Select records where the nickname is NULL (not set/missing).
SELECT * FROM basics.exp WHERE nickname IS NULL;

-- Select records where the nickname is NOT NULL (has any value, including an empty string).
SELECT * FROM basics.exp WHERE nickname IS NOT NULL;

-- Select records where the score equals 0.
SELECT * FROM basics.exp WHERE score = 0;