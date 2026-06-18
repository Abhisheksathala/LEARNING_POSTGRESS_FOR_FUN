-- Drop the 'account' table under the 'basics' schema if it exists.
DROP TABLE IF EXISTS basics.account;

-- Create the 'account' table with standard constraints (NOT NULL, UNIQUE, DEFAULT, CHECK).
CREATE TABLE IF NOT EXISTS basics.account (
  -- id: Unique auto-incremented primary key.
  id SERIAL PRIMARY KEY,
  -- full_name: The full name of the user, cannot be empty.
  full_name TEXT NOT NULL,
  -- email: Unique and non-empty email address.
  email TEXT NOT NULL UNIQUE,
  -- is_active: Status flag indicating if account is active, defaults to true.
  is_active BOOLEAN DEFAULT true,
  -- age: Check constraint ensuring the user is at least 10 years old.
  age INTEGER CHECK(age >= 10),
  -- created_at: Timestamp defaulting to when the account was inserted.
  created_at TIMESTAMP DEFAULT NOW()
);

-- Insert a sample account. Single quotes must be used for SQL text literals.
INSERT INTO basics.account (full_name, email, age)
VALUES ('John Doe', 'john.doe@example.com', 20);


