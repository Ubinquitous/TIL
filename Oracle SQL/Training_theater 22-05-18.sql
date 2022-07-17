CREATE TABLE 극장 (
    극장번호 number,
    극장이름 varchar2(40),
    위치 varchar2(40),
    PRIMARY KEY (극장번호)
);

CREATE TABLE 상영관 (
    극장번호 number,
    상영관번호 number CHECK (상영관번호 BETWEEN 1 AND 10),
    영화제목 varchar2(40),
    가격 number CHECK (가격<=20000),
    좌석수 number,
    PRIMARY KEY (극장번호, 상영관번호),
    FOREIGN KEY (극장번호) REFERENCES 극장 (극장번호)
);

CREATE TABLE 예약 (
    극장번호 number,
    상영관번호 number CHECK (상영관번호 BETWEEN 1 AND 10),
    고객번호 number,
    좌석번호 number,
    날짜 date,
    PRIMARY KEY (극장번호, 상영관번호, 고객번호),
    FOREIGN KEY (극장번호) REFERENCES 극장 (극장번호),
    FOREIGN KEY (극장번호, 상영관번호) REFERENCES 상영관 (극장번호, 상영관번호),
    FOREIGN KEY (고객번호) REFERENCES 고객 (고객번호)
);

CREATE TABLE 고객 (
    고객번호 number,
    이름 varchar2(40),
    주소 varchar2(40),
    PRIMARY KEY (고객번호)
);

DROP TABLE 극장;
DROP TABLE 상영관;
DROP TABLE 예약;
DROP TABLE 고객;

INSERT INTO 예약
        VALUES(1, 1, 9, 48, '2020-09-01');
        
-- 1번 문제 답
SELECT 극장이름, 위치
FROM 극장;

-- 2번 문제 답
SELECT *
FROM 극장
WHERE 위치 LIKE '잠실';

-- 3번 문제 답
SELECT 이름
FROM 고객
WHERE 주소 LIKE '잠실'
ORDER BY 주소 ASC;

-- 4번 문제 답
SELECT 극장번호, 상영관번호, 영화제목
FROM 상영관
WHERE 가격 <= 8000;

-- 5번 문제 답
SELECT *
FROM 고객, 극장
WHERE 위치 LIKE 주소;

-- 집계질의

-- 1번 문제 답
SELECT count(*) 
FROM 극장;

-- 2번 문제 답
SELECT sum(가격) / count(영화제목)
FROM 상영관;

-- 3번 문제 답
SELECT count(*)
FROM 예약
WHERE 날짜 LIKE '20/09/01';

SELECT *
FROM 상영관;
-- 부속질의와 조인

-- 1번 문제 답
SELECT 영화제목
FROM 상영관
WHERE 극장번호 = ( SELECT 극장번호
                  FROM 극장
                  WHERE 극장이름 LIKE '대한' );
                  
-- 2번 문제 답
SELECT 이름
FROM 고객
WHERE 고객번호 = ( SELECT 고객번호
                  FROM 극장
                  WHERE 극장이름 LIKE '대한' );

-- 3번 문제 답
SELECT sum(가격)
FROM 상영관
WHERE 극장번호 = ( SELECT 극장번호
                  FROM 극장
                  WHERE 극장이름 LIKE '대한' );

-- 그룹질의

-- 1번 문제 답
SELECT 극장번호, count(상영관번호)
FROM 상영관
GROUP BY 극장번호;

-- 2번 문제 답
SELECT *
FROM 상영관
WHERE 극장번호 in( SELECT 극장번호
                FROM 극장
                WHERE 위치 LIKE '잠실');

-- 3번 문제 답
SELECT 극장번호, count(고객번호)
FROM 예약
WHERE 날짜 = '20/09/01'
GROUP BY 극장번호;

-- 4번 문제 답
SELECT max(영화제목)
FROM 상영관, 예약
WHERE 상영관.극장번호 = 예약.극장번호 AND 상영관.상영관번호 = 예약.상영관번호 AND 날짜 = '20/09/01'
                        GROUP BY 예약.극장번호, 예약.상영관번호; 

-- DML
SELECT *
FROM 상영관;

-- 1번 문제 답
INSERT INTO 상영관
        VALUES(3, 3, '어벤져스:인피니티 워', 10000, 23);

INSERT INTO 고객
        VALUES(10, '박사밀', '김해');
        
INSERT INTO 극장
        VALUES(4, 'CGV', '김해');

INSERT INTO 예약
        VALUES(3, 1, 10, 26, '20/09/01');


-- 2번 문제 답        
UPDATE 상영관
SET 가격 = 가격 + 가격/10; 