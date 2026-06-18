DROP TABLE IF EXISTS basics.value.exp


--  null emty string  

CREATE TABLE IF NOT EXISTS basics.exp(
   id UUID PRIMARY KEY DEFAULT gen_random_uuid()
   nickname TEXT
   bio TEXT 
   score TEXT
)


INSERT INTO basics.exp(nickname,bio,score)
VALUE
(null,'learning sql ',10),
('','empty nick name',20),
('sangaem','' ,0)

SELECT * FROM basics.exp


SELECT * FROM basics.ex WHERE nickname IS NULL



SELECT * FROM basics.exp WHERE nickname IS NOT NULL

SELECT * FROM basics.exp WHERE score = 0