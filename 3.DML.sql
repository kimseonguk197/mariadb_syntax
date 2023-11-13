-- insert 기본
insert author(id, name, email) values(1, 'kim', 'abc@naver.com');

-- update 기본
update author set email='abc2@naver.com' where id=1;

-- delete 기본
DELETE FROM author WHERE author_id=5;

-- select 예제
select * from author where id=1;
select name, email from author where id=1;
select * from author where id > 1;
select * from author where id > 1 AND name = 'kim';

-- limit
SELECT * FROM AUTHOR LIMIT 1;

-- alias
select a.name as my_name from author a where id=1;

-- like
SELECT * FROM author WHERE name LIKE 'k%'

-- cast => 2020-01-01
SELECT CAST(20200101 AS DATE); 

-- CONVERT  
SELECT CONVERT('2020-01-01', DATETIME);

