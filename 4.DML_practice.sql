-- author 데이터 5개 추가
-- address는 데이터 넣지 말것
insert author(id, name, email) values(1, 'kim1', 'abc1@naver.com');
insert author(id, name, email) values(2, 'kim2', 'abc2@naver.com');
insert author(id, name, email) values(3, 'kim3', 'abc3@naver.com');
insert author(id, name, email) values(4, 'kim4', 'abc4@naver.com');
insert author(id, name, email) values(5, 'kim5', 'abc5@naver.com');

-- post 데이터 5개 추가
-- 2개는 저자가 있는 데이터
-- 2개는 저자가 비어있는 데이터
-- 1개는 저자가 author테이블에 없는 데이터 추가 -> 에러 발생 확인하기
insert post(id, title, contents, author_id) values(1, 'title1', 'contents1 ... ', 1);
insert post(id, title, contents, author_id) values(2, 'title2', 'contents2 ... ', 2);
insert post(id, title, contents) values(3, 'title3', 'contents3 ... ');
insert post(id, title, contents) values(4, 'title4', 'contents3 ... ');
insert post(id, title, contents, author_id) values(5, 'title2', 'contents2 ... ', 10);

-- author 데이터 중 id가 4이상 데이터는 email을 abc@naver.com 으로 변경
update author set email='abc@naver.com', name='abc' where id>=4;


-- author 데이터 중 id가 2인 데이터 삭제 -> 오류 발생
delete from author where id = 2;


-- author age컬럼 추가하여 tiny int로 설정
insert author(id, name, email, age) values(6, 'kim6', 'abc6@naver.com', 255);
insert author(id, name, email, age) values(7, 'kim7', 'abc7@naver.com', 300);

-- role타입 enum타입으로 변경
insert author(id, role) values(8, 'admin');
insert author(id, role) values(9, 'super-user');
insert author(id ) values(9);
