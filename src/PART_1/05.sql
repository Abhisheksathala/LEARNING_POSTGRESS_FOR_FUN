-- Drop the 'app' table under the 'basics' schema if it exists.
DROP TABLE IF EXISTS basics.app;

-- Create the 'app' table under the 'basics' schema.
CREATE TABLE IF NOT EXISTS basics.app (
  -- id: UUID primary key, defaulting to an auto-generated random UUID.
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  -- event: The event name text, cannot be null.
  event TEXT NOT NULL,
  -- meta: JSONB column to store dynamic/structured metadata, defaulting to an empty JSON object.
  meta JSONB DEFAULT '{}'::JSONB,
  -- created_at: Timestamp defaulting to the current system time.
  created_at TIMESTAMP DEFAULT NOW()
);

-- Insert a sign-up event with a JSON payload specifying the browser.
INSERT INTO basics.app (event, meta)
VALUES ('sign_up', '{"browser": "chrome"}');

-- Query the event and extract the 'browser' attribute from the JSONB 'meta' column (using the ->> operator).
-- Only selects records where the 'browser' key exists in the 'meta' JSON object (using the ? operator).
SELECT event, meta ->> 'browser' AS browser 
FROM basics.app 
WHERE meta ? 'browser';