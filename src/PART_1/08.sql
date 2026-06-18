
-- Drop the 'sal' table under the 'basics' schema if it exists.
DROP TABLE IF EXISTS basics.sal;

-- Create the 'sal' table under the 'basics' schema.
CREATE TABLE IF NOT EXISTS basics.sal (
  -- id: Unique auto-incremented primary key.
  id SERIAL PRIMARY KEY,
  -- tit: Title of the sale entry, cannot be null.
  tit TEXT NOT NULL,
  -- price: The price of the sale, defaults to 0.00.
  price NUMERIC(10,2) NOT NULL DEFAULT 0
);

-- Insert multiple sale records. Note the comma separating the rows inside VALUES.
INSERT INTO basics.sal (tit, price)
VALUES 
  ('sale1', 30),
  ('sale2', 20);

-- Query the sale entry where the id equals 2.
SELECT * FROM basics.sal WHERE id = 2;



  