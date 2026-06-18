

SELECT name FROM product;



-- alias name

SELECT name as "product name" , price as "product price",category as "category" FROM product WHERE sku IN ('TECH-MSE-001','TECH-KBD-002','HOME-WTR-003');


SELECT name FROM product WHERE category = 'Electronics'; 

-- AND -> &&  this is also can be written as and in sql
-- OR -> ||  this is also can be written as or in sql
-- NOT -> !  this is also can be written as not in sql


SELECT name,price FROM product WHERE category = 'Electronics' AND price > 50;  


SELECT name,price FROM product WHERE category = 'Electronics' OR (category = 'Stationery' AND price > 10);  

SELECT name from product WHERE NOT category = 'Stationery'

