-- Drop the 'products_basic' table under the 'basics' schema if it exists to start fresh.
DROP TABLE IF EXISTS basics.products_basic;

-- Create the 'products_basic' table under the 'basics' schema.
CREATE TABLE basics.products_basic (
  -- id: Auto-incrementing primary key.
  id SERIAL PRIMARY KEY,
  -- name: The product name, maximum 100 characters, cannot be null.
  name VARCHAR(100) NOT NULL,
  -- des: Optional text description of the product.
  des TEXT,
  -- stock: The quantity of product in stock, defaults to 0.
  stock INTEGER DEFAULT 0,
  -- total_view: Optional counter for total views, commented out for now.
  -- total_view BIGINT DEFAULT 0,
  -- price: Optional price numeric column, commented out for now.
  -- price NUMERIC(10,2),
  -- isactive: Boolean flag indicating if the product is active, defaults to true.
  -- (Uncommented because it is filtered on in the SELECT query below)
  isactive BOOLEAN DEFAULT true
);

-- Insert a new product record. The 'stock' value is passed as an integer (1).
INSERT INTO basics.products_basic (name, stock)
VALUES ('abhi', 1);

-- Query the id, name, and stock of all active products.
SELECT id, name, stock 
FROM basics.products_basic 
WHERE isactive = true;