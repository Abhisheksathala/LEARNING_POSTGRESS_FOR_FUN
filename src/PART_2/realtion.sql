-- creat 4 tables so i can ptactice the realtion between them in sql user , post , comment 

CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(20),
	password VARCHAR(20),
);


CREATE TABLE posts(
	post_id SERIAL PRIMARY KEY,
	user_id UUID NOT NULL REFERENCES users(user_id),
	post VARCHAR(20),
);


CREATE TABLE comments(
	comment_id SERIAL PRIMARY KEY,
	post_id INT NOT NULL REFERENCES posts(post_id),
	user_id UUID NOT NULL REFERENCES users(user_id),
	comment VARCHAR(20),
);

-- now exaplin how this work everthingh stop by step 

--  user id is primary key of user table and forigen key of posts and comments table 

-- 

-- forigen key of post table is user id 
-- forigen key of comments table is post id and user id 


-- learning about FOreign Key and Primary key

-- primary key is a key that is used to identify a record in a table , it is also called as unique key 
-- forigen key is a key that is used to identify a record in a table , it is also called as unique key  and it  is another table preimery key  refered from another table  



-- user.id = premery key 
-- post.userid = forgain key 


-- one to many realtions 


-- means on parent can have many child rows



-- inner join and left join 

-- inner join means joining both tables 


SELECT user.name AS auther post.title post.create_at FROM post INNER JOIN users ON posts.userid = users.id
WHERE posts.status = "published" ORDER BY post.view DESC