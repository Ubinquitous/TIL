-- ALTER문, 테이블을 변경시키는 문법

DROP TABLE newbook;
DROP TABLE newcustomer;
DROP TABLE neworder;

CREATE TABLE newbook
(
    bookid NUMBER,
    bookname VARCHAR2(20),
    publisher VARCHAR2(20),
    price NUMBER
);
SELECT * FROM newbook; -- ALTER로 변경시킨 사항을 확인하는 용도

-- ALTER 속성 추가 기본 형식
-- ALTER TABLE "테이블 이름" ADD "속성이름" "자료형";
-- 1번 문제 : newbook 테이블에 VARCHAR2(13)의 자료형을 가진 isbn 속성을 추가하시오.
ALTER TABLE newbook ADD isbn VARCHAR2(13);

-- ALTER 속성 타입 변경 기본 형식
-- ALTER TABLE "테이블 이름" MODIFY "속성이름" "변경타입";
-- 2번 문제 : newbook 테이블의 isbn 속성의 자료형을 number형으로 변경하시오.
ALTER TABLE newbook MODIFY isbn NUMBER;

-- ALTER 속성 삭제 기본 형식
-- ALTER TABLE "테이블 이름" DROP COLUMN "속성이름";
-- 3번 문제 : newbook 테이블의 isbn 속성을 삭제하시오.
ALTER TABLE newbook DROP COLUMN isbn;

-- 속성의 제약 조건 추가하기
-- ALTER TABLE "테이블 이름" MODIFY "속성이름" "자료형" "제약조건"
-- 4번 문제 : newbook 테이블의 bookid 속성에 not null 제약 조건을 추가하시오.
ALTER TABLE newbook MODIFY bookid NUMBER NOT NULL;

-- 속성 기본 키를 변경하기
-- ALTER TABLE "테이블 이름" ADD PRIMARY KEY("속성");
-- 5번 문제 : newbook 테이블의 bookid 속성을 기본키로 변경하시오.
ALTER TABLE newbook ADD PRIMARY KEY(bookid);

-- INSERT문 = 데이터를 삽입하는 문법
-- INSERT문 기본 형식
-- INSERT INTO "테이블이름"(속성명1, 속성명2, ...) => 전체 속성명이 모두 필요하다면 생략이 가능함.
--      VALUES(값 삽입); => 위 삽입한 속성의 순서와 같아야함, 각 속성끼리의 순서는 같지 않아도 문제 없음.


SELECT * 
FROM book;

-- 1번 문제 : BOOK 테이블에 새로운 도서 '스포츠 의학'을 삽입하시오. 
-- '스포츠 의학'은 한솔의학서적에서 출간했으며 가격은 90,000원이다.

INSERT INTO book(bookid, bookname, publisher, price) -- 모든 행에 삽입할 경우 괄호 생략 가능
        VALUES(11, '스포츠 의학', '한솔의학서적', 90000);
        
-- 2번 문제 : book 테이블에 새로운 도서 '스포츠 의학'을 삽입하시오.
-- '스포츠 의학'은 한솔의학서적에서 출간했으며 가격은 미정이다.

INSERT INTO book(bookid, bookname, publisher)
        VALUES(14, '스포츠 의학', '한솔의학서적');

SELECT * 
FROM imported_book; -- 수입도서 목록
-- 3번 문제 : 수입도서 목록(imported_book)을 book 테이블에 모두 삽입하시오.
-- VALUE 대신 SELECT값으로 바로 삽입함.
-- SELECT로 INSERT INTO하는 조건 : 삽입하고자 하는 테이블의 자료형과 SELECT하는 테이블의 자료형이 일치해야 오류 발생 X.

INSERT INTO book(bookid, bookname, publisher, price)
        SELECT bookid, bookname, publisher, price
        FROM imported_book;
        
-- UPDATE문 : 이미 삽입되어 있는 데이터 값을 변경할 때 사용.
-- UPDATE문 기본 형식

-- UPDATE "테이블이름"
-- SET "속성이름"='속성값'
-- WHERE "조건";
SELECT * FROM customer;
-- 1번 문제 : CUSTOMER 테이블에서 고객번호가 5인 고객의 주소를 '대한민국 부산'으로 변경하시오.
UPDATE customer
SET address = '대한민국 부산'
WHERE custid = 5; 

-- 2번 문제 : customer 테이블에서 박세리 고객의 주소를 김연아 고객의 주소로 변경하시오.
UPDATE customer
SET address = ( SELECT address
                FROM customer
                WHERE custid = 2)
WHERE name LIKE '박세리';

-- DELETE문 : 현재 삽입되어 있는 데이터들을 삭제하고 싶을 때 사용.
-- DELET문 삭제 기본 형식

SELECT *
FROM customer;

-- DELETE 
-- FROM 테이블이름
-- WHERE 조건

-- 1번 문제 : customer 테이블에서 고객번호가 5인 고객을 삭제한 후 결과 확인

DELETE
FROM customer
WHERE custid = 5;

-- 2번 문제 : 모든 고객을 삭제하시오.
DELETE FROM customer;
-- 확정시키려면 커밋을 해주어야 하는데, 커밋을 하지 않았다면 ROLLBACK문으로 쉽게 전 실행을 지울 수 있음.
ROLLBACK;