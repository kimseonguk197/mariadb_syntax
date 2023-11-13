-- post테이블의 content 컬럼 contents로 이름 변경
ALTER TABLE post CHANGE COLUMN content contents varchar(255);

-- post테이블의 contents 컬럼 글자수 3000으로 변경
ALTER TABLE post MODIFY COLUMN contents VARCHAR(3000) NOT NULL;

-- author테이블의 test1컬럼 삭제
ALTER TABLE author DROP COLUMN test1;

-- author테이블에 address 컬럼 varchar 255로  추가
ALTER TABLE author ADD COLUMN address VARCHAR(255);

-- post테이블 생성문 미리 복사후 drop
SHOW CREATE TABLE post;

-- CREATE TABLE `post` (
--    `id` int(11) NOT NULL,
--    `title` varchar(30) DEFAULT NULL,
--    `content` varchar(3000) NOT NULL,
--    `author_id` int(11) DEFAULT NULL,
--    PRIMARY KEY (`id`),
--    KEY `author_id` (`author_id`),
--    CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

-- DROP TABLE post;

-- author age컬럼 추가하여 tiny int로 설정
ALTER TABLE author ADD COLUMN age TINYINT unsigned;

-- role타입 enum타입으로 추가
ALTER TABLE author ADD COLUMN  role ENUM('user', 'admin') NOT NULL DEFAULT 'user';