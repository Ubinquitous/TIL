-- 뷰 테이블 ( view table )
--  1. 읽기 전용 테이블로, 값 수정이 불가능하다. ( 유사 함수 역할 )
--  2. 관리자가 보여주고 싶은 정보만 추출하여 보여줄 수 있어 보안성이 우수하다.

-- 문제 1. book 테이블에서 '축구'라는 문구가 포함된 자료만 보여주는 뷰를 작성하라.
 CREATE VIEW view_soccer_book
 AS SELECT *
    FROM  book
    WHERE bookname LIKE '%축구%';
    
 SELECT *
 FROM view_soccer_book;

-- 문제 2. 주소에 '대한민국'을 포함하는 고객들로 구성된 뷰를 작성하라.
 CREATE VIEW view_korea_customer
 AS SELECT *
    FROM  customer
    WHERE address LIKE '%대한민국%';
    
 SELECT *
 FROM view_korea_customer;
 
/* 문제 3. 나는 개발자고 지금 클라이언트들한테 컴플레인이 들어왓어. 아니 테이블에 지금 이름이 세글자 다있으면 너무 우리 이름 그 신상개인정보있는데 너무 노출되는거 아입니까
          에? 회사에서 도대체 고객테이블관리를 어떻게하는거야? 그러길래 과장님이 불러갖고 야 고객테이블에 메인속성에있는 이름 석글자중에 가운데이름을 별표로 바꿔서 넣어라 라고 했어요.
          오늘 배운 집계함수를 이용해서 커스터머테이블에서 네임 가운데 글자가 별표로 바뀌게 되는 뷰테이블을 만들고, 쎌렉트해서 조회했을 때 가운데글자가 별로 바뀌는 뷰테이블을
          만들고 구글 클래스룸에 7시까지 제출하면 됩니다.
*/

 CREATE VIEW view_privacy_name
 AS SELECT CONCAT(CONCAT(SUBSTR(name, 1, 1), '*'), SUBSTR(name, 3, 1)) 마참내  
 FROM customer;
 
 SELECT *
 FROM view_privacy_name;