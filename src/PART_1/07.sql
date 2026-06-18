-- NOT NULL UNIQIE , DEFAULT CHECK constarins

-- app script developer 



DROP  DATABASE IF EXISTS basics.account

CREATE TABLE IF NOT EXISTS basics.account(
  id SERIAL PRIMARY KEY ,
  full_name TEXT NOT NULL,
  email TEXT NOT NULL UNIQIE,
  is_active BOOLEAN DEFAULT true,
  age INTEGER CHECK(age>=10),
  created_at TIMESTAMP DEFAULT NOW( )
)

INSERT INTO basics.account(full_name,email,age)
VALUE 
("name","email",20)


