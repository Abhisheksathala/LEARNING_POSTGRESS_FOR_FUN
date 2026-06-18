
DROP IF EXISTS basics.sal 


CREATE TABLE IF NOT EXISTS basics.sal(
  id SERIAL PRIMARY KEY
  tit TEXT NOT NULL
  price NUMERIC(10,2) NOT NULL DEFAULT 0,
  )


  INSERT  INTO basics.sal(tit,price)
  VALUE
  ('sale1',30)
  ('sale2',20)

  SELECT * FROM basics.sal WHERE id = 2 



  