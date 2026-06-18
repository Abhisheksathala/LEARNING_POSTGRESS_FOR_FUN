CREATE EXIENSION IF NOT EXISTS pgcrypto

DROP TABLE IF EXISTS product 


CREATE TABLE product (
  id UUID PRIMARY KEY gen_random_uuid,
  name TEXT NOT NULL,
  category TEXT NOT NULL,
  price NUMERIC(10,2) NOT NULL CHECK (price >=0)
  is_active BOOLEAN NOT NULL DEFAULT true,
  sku TEXT UNIQIE,
  des TEXT,
)