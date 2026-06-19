

SELECT name FROM product;



-- alias name

SELECT name as "product name" , price as "product price",category as "category" FROM product WHERE sku IN ('TECH-MSE-001','TECH-KBD-002','HOME-WTR-003');


SELECT name FROM product WHERE category = 'Electronics'; 

-- AND -> &&  this is also can be written as and in sql
-- OR -> ||  this is also can be written as or in sql
-- NOT -> !  this is also can be written as not in sql


SELECT name,price FROM product WHERE category = 'Electronics' AND price > 50;  


SELECT name,price FROM product WHERE category = 'Electronics' OR (category = 'Stationery' AND price > 10);  

SELECT name from product WHERE NOT category = 'Stationery';



-- LIKE CASES SANTSTIB PATTERN MATCH 
-- LIEK CASE INSENSTIVE PATTERN CASE 
-- %LIKE %a%LIKE %a  PATTERN CASE 
-- % MEANS ANY OF CHAR 
-- EXACTLY ONE CHAR 

--  the use of % means any thing can after this 
SELECT name ,price FROM product WHERE name LIKE "wireless%" 


-- desk DESK Desk

SELECT name FROM product WHERE name ILIKE '%desk%';


SELECT name ,category FROM product WHERE name ILIKE '%shoes%' 
 OR name ILIKE '%mouse%';



--  IN NOT IN BETWEEN  


SELECT name FROM product WHERE category IN ('Electronics','Apparel') AND price > 50;    






SELECT * FROM product WHERE des IS NOT NULL  

SELECT * FROM prod WHERE des NULL




SELECT name , price FROM products ORDER BY price DESC  
SELECT name , price FROM products ORDER BY price ASC 



SELECT cat FROM prod ORDER BY cat ASC , price DESC 



SELECT name FROM product ORDER BY ASC LIMIT 5


-- page - 1 * limt 5 , skip (page - 1) * limt

SELECT name FROM product ORDER BY ASC LIMIT 5 OFFSET 0;     



-- UPDATE 


SELECT name FROM product;

UPDATE product SET name = "da" WHERE sku = "l"



UPDATE product SET price = ROUND(price * 0.15 ,2) WHERE cat = "stat"


DELETE FROM product WHERE sku = "l" 



INSERT INTO prodctt(naem)
VALUES("hha")
RETURNING * 



