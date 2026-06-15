DROP TABLE IF EXISTS basics.products_basic


CREATE TABLE basics.products_basic(
  id SERIAL PRIMARY KEY,

  name VARCHAR(100) NOT NULL
  des TEXT,
  stock INTEGER DEFAULT 0

  -- total_view BIGINT DEFAULT 0

  -- price NUMERIC(10,2)

  -- isactive BOOLEAN DEFAULT true

);


INSERT INTO basics.products_basic
   (  name,stock)
   VALUE(
    'abhi',
    '1'
   );


   SELECT id , name ,stock FROM basics.products_basic WHERE isactive