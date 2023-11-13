create database board;
use board;
-- 테이블 신규 생성
create table author(id INT, name VARCHAR(255), email VARCHAR(255), password VARCHAR(255), test1 VARCHAR(255), PRIMARY KEY (id));

create table posts(id INT, title VARCHAR(30), content VARCHAR(255), author_id INT, PRIMARY KEY (id), FOREIGN KEY (author_id) REFERENCES author(id));

SHOW tables;

describe author;
describe posts;

-- 테이블 변경
ALTER TABLE posts RENAME post;

-- 테이블 컬럼 추가
ALTER TABLE author ADD COLUMN role VARCHAR(50);

-- 테이블 컬럼 타입변경
ALTER TABLE author MODIFY COLUMN name VARCHAR(100) NOT NULL;