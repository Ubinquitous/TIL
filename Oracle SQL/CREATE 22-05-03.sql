-- CREATE 문
-- 2022년 5월 3일 화요일 8, 9교시 --

CREATE TABLE Newbook -- Newbook 테이블 생성하기
(
    bookid NUMBER PRIMARY KEY,                      -- "bookid" 속성 생성 : 숫자형으로 선언
    bookname VARCHAR2(20) NOT NULL,                 -- "bookname" 속성 생성 : 문자형으로 선언
    publisher VARCHAR2(20)                          -- "bookname" 속성 생성 : 문자형으로 선언
    price NUMBER DEFAULT 10000 CHECK(price>1000)    -- "price" 속성 생성 : 숫자형으로 선언
    -- 두 개 이상의 PK를 지정하고 싶을 때 : 
    -- PRIMARY KEY (bookname, publisher)
);
    -- 문자형 CHAR(n), VARCHAR(n), VARCHAR2(n) 차이점
    -- CHAR(20) = 무조건 메모리에 20Byte를 할당함. ( 메모리 낭비가 심함, 입력하지 않아도 데이터에 0 삽입 )
    -- VARCHAR, VARCHAR2 = 자료형 크기만큼 메모리가 압축됨. 변형 가능한 메모리
    -- VARCHAR2 / VARCHAR = 버전 차이, 최종적으로는 VARCHAR2가 제일 효율적

CREATE TABLE Neworder
(
    orderid NUMBER,
    custid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    saleprice NUMBER,
    orderdate DATE,                                 -- "orderdate" 속성 생성 : 날짜형로 선언
    PRIMARY KEY(orderid),
    FOREIGN KEY(custid) REFERENCES Newcustomer(custid) ON DELETE CASCADE
);
    -- Newcustomer에 있는 custid 속성을 참조하여 FK로 지정.
    -- ON DELETE CASCADE  --> 참조 중인 테이블의 기본 키가 사라지면 참조하는 외래키 값도 같이 삭제됨.
    -- ON DELETE SET NULL --> 참조 중인 테이블의 기본 키가 사라지면 참조하는 외래키 값에 null  삽입.
    -- ON DELETE RESTRICT --> 삭제 거부.

CREATE TABLE Newcustomer
(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40),
    address VARCHAR2(40),
    phone VARCHAR2(30)
);

-- 속성명 변경 등등 변경사항에 대해 변경해야 할 사항이 생기면 DROP(삭제) 후 변경 뒤 생성해주어야 오류가 발생하지 않음.
DROP TABLE Newbook;     -- "Newbook"     테이블 삭제하기
DROP TABLE Newcustomer; -- "Newcustomer" 테이블 삭제하기
DROP TABLE Neworder;    -- "Neworder"    테이블 삭제하기

--  NOT NULL 제약 조건 : 데이터를 삽입할 때 해당 속성값에 null이 들어가면 위배됨.
--  UNIQUE   제약 조건 : 해당 속성값에 동일한 두 개 이상의 값이 삽입되면 위배됨.
--  DEFAULT  제약 조건 : 만약 속성값이 null이라면 DEFAULT값을 자동으로 삽입.
--  CHECK    제약 조건 : 속성값의 도메인을 지정. (속성값 범위 지정 명령어)

ALTER TABLE Newbook
RENAME CONSTRAINT SYS_C008547 TO Newbook_PK;
-- RENAME CONSTRAINT A TO B : 에러 문장 A를 B로 변경시키는 명령어
