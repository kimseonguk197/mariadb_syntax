-- author 테이블과 post 테이블을 INNER JOIN하여, 글을 작성한 모든 저자의 이름(name)과 해당 글의 제목(title)을 조회하시오.
-- author는 alias a, post는 alias p를 쓰시오

SELECT a.name, p.title FROM author a INNER JOIN post p ON a.id = p.author_id;

--  author 테이블을 기준으로 post 테이블과 LEFT JOIN하여, 모든 저자의 이름과 해당 저자가 작성한 글의 제목을 조회하시오. 
-- 글을 작성하지 않은 저자의 경우, 글 제목은 NULL로 표시하시오.
SELECT a.name, p.title FROM author a LEFT JOIN post p ON a.id = p.author_id;


--  author 테이블과 post 테이블을 INNER JOIN하여, 저자의 나이가 25세 이상인 저자가 작성한 모든 글의 제목을 조회하시오.
SELECT p.title
FROM author a
INNER JOIN post p ON a.id = p.author_id
WHERE a.age > 20 ;

-- UNION: author 테이블과 post 테이블에서 각각 이름(name)과 제목(title)을 조회하여, 두 결과를 하나의 테이블로 결합
SELECT name AS result FROM author
UNION
SELECT title FROM post;

-- post 테이블에서 글을 조회. 단, 글의 저자(author_id)가 25세 이상인 저자가 쓴 글만 조회.
SELECT * FROM post WHERE author_id IN (
    SELECT id
    FROM author
    WHERE age >= 25
);

