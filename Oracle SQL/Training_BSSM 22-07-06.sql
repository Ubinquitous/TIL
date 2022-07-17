CREATE TABLE 학반
(
    학년 NUMBER,
    반 NUMBER,
    PRIMARY KEY (학년,반)
);

CREATE TABLE 학교
(
    학년 NUMBER,
    반 NUMBER,
    학과 VARCHAR2(50),
    담임 VARCHAR(50),
    부담임 VARCHAR(50),
    PRIMARY KEY (학년,반),
    FOREIGN KEY(학년,반) REFERENCES 학반(학년,반)
);

CREATE TABLE 학생
(
    학년 NUMBER,
    반 NUMBER,
    번호 NUMBER,
    이름 VARCHAR2(50),
    성별 VARCHAR2(50),
    PRIMARY KEY (학년, 반, 번호),
    FOREIGN KEY(학년,반) REFERENCES 학반(학년,반)
);

INSERT INTO 학반 VALUES(1, 1);
INSERT INTO 학반 VALUES(1, 2);
INSERT INTO 학반 VALUES(1, 3);
INSERT INTO 학반 VALUES(1, 4);
INSERT INTO 학반 VALUES(2, 1);
INSERT INTO 학반 VALUES(2, 2);
INSERT INTO 학반 VALUES(2, 3);
INSERT INTO 학반 VALUES(2, 4);

INSERT INTO 학교 VALUES(1, 1, '-', '구*영', '이*숙');
INSERT INTO 학교 VALUES(1, 2, '-', '조*겸', '진*빈');
INSERT INTO 학교 VALUES(1, 3, '-', '김*영', '김*정');
INSERT INTO 학교 VALUES(1, 4, '-', '유*찬', '김*필');
INSERT INTO 학교 VALUES(2, 1, '소프트웨어개발과', '차*민', '이*영');
INSERT INTO 학교 VALUES(2, 2, '소프트웨어개발과', '박*현', '최*준');
INSERT INTO 학교 VALUES(2, 3, '임베디드소프트웨어과', '김*태', '정*진');
INSERT INTO 학교 VALUES(2, 4, '임베디드소프트웨어과', '김*봉', '서*희');

INSERT INTO 학생 VALUES(1, 1, 1, '강*석', '남');
INSERT INTO 학생 VALUES(1, 1, 2, '김*민', '남');
INSERT INTO 학생 VALUES(1, 1, 3, '김*찬', '남');
INSERT INTO 학생 VALUES(1, 2, 1, '강*제', '남');
INSERT INTO 학생 VALUES(1, 2, 2, '강*훈', '남');
INSERT INTO 학생 VALUES(1, 2, 3, '권*빈', '남');
INSERT INTO 학생 VALUES(1, 3, 1, '고*영', '여');
INSERT INTO 학생 VALUES(1, 3, 2, '김*건', '남');
INSERT INTO 학생 VALUES(1, 3, 3, '김*우', '남');
INSERT INTO 학생 VALUES(1, 4, 1, '강*빈', '남');
INSERT INTO 학생 VALUES(1, 4, 2, '구*하', '여');
INSERT INTO 학생 VALUES(1, 4, 3, '권*원', '남');
INSERT INTO 학생 VALUES(2, 1, 1, '김*서', '남');
INSERT INTO 학생 VALUES(2, 1, 2, '김*울', '여');
INSERT INTO 학생 VALUES(2, 1, 3, '박*은', '여');
INSERT INTO 학생 VALUES(2, 2, 1, '권*서', '남');
INSERT INTO 학생 VALUES(2, 2, 2, '김*민', '남');
INSERT INTO 학생 VALUES(2, 2, 3, '김*현', '남');
INSERT INTO 학생 VALUES(2, 3, 1, '권*욱', '남');
INSERT INTO 학생 VALUES(2, 3, 2, '김*형', '남');
INSERT INTO 학생 VALUES(2, 3, 3, '김*현', '남');
INSERT INTO 학생 VALUES(2, 4, 1, '김*수', '남');
INSERT INTO 학생 VALUES(2, 4, 2, '김*진', '여');
INSERT INTO 학생 VALUES(2, 4, 3, '김*은', '여');

SELECT 학교.학년, 학교.반, 학생.번호, 학생.이름, 학생.성별, 학교.학과, 학교.담임, 학교.부담임
FROM 학교, 학생
WHERE 학교.학년 = 학생.학년 AND 학교.반 = 학생.반;