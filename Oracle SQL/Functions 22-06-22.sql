-- 절댓값 함수
SELECT ABS(-26)
FROM dual; -- 26

-- 올림 함수
SELECT CEIL(15.3) 
FROM dual; -- 16

-- 제곱 함수
SELECT POWER(2,10)
FROM dual; -- 1024

-- 반올림 함수
SELECT ROUND(15.4)
FROM dual; -- 15

-- 문자열 병합 함수
SELECT CONCAT('Hello, ', 'World!') -- ( '병합할 문자열1', '병합할 문자열2' )
FROM dual; -- Hello, World!

-- 문자열 왼쪽 할당
SELECT LPAD('Page 1', 10, '*') -- ( '삽입할 문자열', '할당할 자리수', '채워넣을 문자' ) 
FROM dual; -- ****Page 1

-- 왼쪽부터 문자 제거
SELECT LTRIM('From Korea', 'Fomr orK') -- ( '문자열', '제거할 문자' )
FROM dual; -- ea

-- 문자열 변환
SELECT REPLACE('Jack', 'J', 'Bl') -- ( '문자열', '변경시킬 문자열', '변경할 문자열')
FROM dual; -- Black

-- 문자열 오른쪽 할당
SELECT RPAD('Page 1', 10, '*') -- ( '삽입할 문자열', '할당할 자리수', '채워넣을 문자' ) 
FROM dual; -- Page 1****

-- 오른쪽부터 문자 제거
SELECT RTRIM('From Korea', 'rea') -- ( '문자열', '제거할 문자' )
FROM dual; -- From Ko

-- 문자열 부분 출력
SELECT SUBSTR('Lionel Messi', 2, 7) -- ( '문자열', '시작할 문자 수', '출력할 문자 수' )
FROM dual; -- ionel M

-- 아스키코드 코드번호 출력
SELECT ASCII('D')
FROM dual; -- 68

-- 문자열 검색
SELECT INSTR('CORPORATE FLOOR', 'OR', 3, 2) -- ( '문자열', '검색할 문자열', '시작할 문자 수', '순번' )
FROM dual; -- 14, 검색된 문자열 번호 출력

-- 현재 날짜 출력
SELECT SYSDATE
FROM dual;

-- 두 값이 같을 경우 NULL 출력
SELECT NULLIF(205, 205) -- ( '비교식1', '비교식2' )
FROM dual; -- NULL

-- 기본값이 NULL이면 지정값 출력
SELECT NVL(NULL, 1516) -- ( '기본값', '지정값' )
FROM dual; -- 1516, NULL이 아니면 기본값 출력

