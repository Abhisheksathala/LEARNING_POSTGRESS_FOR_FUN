-- Enable the 'pgcrypto' extension in order to generate UUID keys (e.g., using gen_random_uuid()).
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Drop the 'product' table if it already exists to start clean.
DROP TABLE IF EXISTS product;

-- Create the 'product' table.
CREATE TABLE product (
  -- id: UUID primary key, generated automatically using gen_random_uuid().
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  -- name: Product name, cannot be empty.
  name TEXT NOT NULL,
  -- category: Product category, cannot be empty.
  category TEXT NOT NULL,
  -- price: Product price, numeric format with two decimal places, must be >= 0.
  price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
  -- is_active: Boolean status flag, defaults to true.
  is_active BOOLEAN NOT NULL DEFAULT true,
  -- sku: Unique identifier text for inventory management.
  sku TEXT UNIQUE,
  -- des: Description of the product.
  des TEXT
);

-- Insert sample product data.
INSERT INTO product (name, category, price, sku, des) VALUES
('Wireless Mouse', 'Electronics', 25.99, 'TECH-MSE-001', 'Ergonomic 2.4GHz wireless mouse with adjustable DPI'),
('Mechanical Keyboard', 'Electronics', 89.99, 'TECH-KBD-002', 'RGB backlit mechanical keyboard with blue switches'),
('Water Bottle', 'Home & Kitchen', 14.50, 'HOME-WTR-003', 'Stainless steel vacuum insulated water bottle 500ml'),
('Running Shoes', 'Apparel', 65.00, 'APRL-SHS-004', 'Lightweight running shoes with breathable mesh upper'),
('Notebook', 'Stationery', 4.99, 'STAT-NBK-005', 'A5 ruled hardcover notebook with ribbon bookmark');

-- Retrieve details of the product with the SKU 'TECH-MSE-001'.
SELECT * FROM product WHERE sku = 'TECH-MSE-001';