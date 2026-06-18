CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS product;

CREATE TABLE product (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  category TEXT NOT NULL,
  price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
  is_active BOOLEAN NOT NULL DEFAULT true,
  sku TEXT UNIQUE,
  des TEXT
);

INSERT INTO product (name, category, price, sku, des) VALUES
('Wireless Mouse', 'Electronics', 25.99, 'TECH-MSE-001', 'Ergonomic 2.4GHz wireless mouse with adjustable DPI'),
('Mechanical Keyboard', 'Electronics', 89.99, 'TECH-KBD-002', 'RGB backlit mechanical keyboard with blue switches'),
('Water Bottle', 'Home & Kitchen', 14.50, 'HOME-WTR-003', 'Stainless steel vacuum insulated water bottle 500ml'),
('Running Shoes', 'Apparel', 65.00, 'APRL-SHS-004', 'Lightweight running shoes with breathable mesh upper'),
('Notebook', 'Stationery', 4.99, 'STAT-NBK-005', 'A5 ruled hardcover notebook with ribbon bookmark');




SELECT * FROM product WHERE sku = 'TECH-MSE-001'