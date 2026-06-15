DROP TABLE IF EXISTS basics.students


CREATE TABLE basics.students (
  -- pr kkey auto incremental
  id SERIAL PRIMARY KEY;
  -- text means string
  name TEXT NOT NULL
  email TEXT NOT NULL UNIQUE
  age INTEGER CHECK(age >= 10)
  created_at TIMESTAMP DEFAULT NOW()
)

INSERT INTO   basics.students(name,email,age)
VALUE
{'abhi','abhis@gamil.com','22'}


SELECT * FROM basics.students