CREATE TABLE ���� (
    �����ȣ number,
    �����̸� varchar2(40),
    ��ġ varchar2(40),
    PRIMARY KEY (�����ȣ)
);

CREATE TABLE �󿵰� (
    �����ȣ number,
    �󿵰���ȣ number CHECK (�󿵰���ȣ BETWEEN 1 AND 10),
    ��ȭ���� varchar2(40),
    ���� number CHECK (����<=20000),
    �¼��� number,
    PRIMARY KEY (�����ȣ, �󿵰���ȣ),
    FOREIGN KEY (�����ȣ) REFERENCES ���� (�����ȣ)
);

CREATE TABLE ���� (
    �����ȣ number,
    �󿵰���ȣ number CHECK (�󿵰���ȣ BETWEEN 1 AND 10),
    ����ȣ number,
    �¼���ȣ number,
    ��¥ date,
    PRIMARY KEY (�����ȣ, �󿵰���ȣ, ����ȣ),
    FOREIGN KEY (�����ȣ) REFERENCES ���� (�����ȣ),
    FOREIGN KEY (�����ȣ, �󿵰���ȣ) REFERENCES �󿵰� (�����ȣ, �󿵰���ȣ),
    FOREIGN KEY (����ȣ) REFERENCES �� (����ȣ)
);

CREATE TABLE �� (
    ����ȣ number,
    �̸� varchar2(40),
    �ּ� varchar2(40),
    PRIMARY KEY (����ȣ)
);

DROP TABLE ����;
DROP TABLE �󿵰�;
DROP TABLE ����;
DROP TABLE ��;

INSERT INTO ����
        VALUES(1, 1, 9, 48, '2020-09-01');
        
-- 1�� ���� ��
SELECT �����̸�, ��ġ
FROM ����;

-- 2�� ���� ��
SELECT *
FROM ����
WHERE ��ġ LIKE '���';

-- 3�� ���� ��
SELECT �̸�
FROM ��
WHERE �ּ� LIKE '���'
ORDER BY �ּ� ASC;

-- 4�� ���� ��
SELECT �����ȣ, �󿵰���ȣ, ��ȭ����
FROM �󿵰�
WHERE ���� <= 8000;

-- 5�� ���� ��
SELECT *
FROM ��, ����
WHERE ��ġ LIKE �ּ�;

-- ��������

-- 1�� ���� ��
SELECT count(*) 
FROM ����;

-- 2�� ���� ��
SELECT sum(����) / count(��ȭ����)
FROM �󿵰�;

-- 3�� ���� ��
SELECT count(*)
FROM ����
WHERE ��¥ LIKE '20/09/01';

SELECT *
FROM �󿵰�;
-- �μ����ǿ� ����

-- 1�� ���� ��
SELECT ��ȭ����
FROM �󿵰�
WHERE �����ȣ = ( SELECT �����ȣ
                  FROM ����
                  WHERE �����̸� LIKE '����' );
                  
-- 2�� ���� ��
SELECT �̸�
FROM ��
WHERE ����ȣ = ( SELECT ����ȣ
                  FROM ����
                  WHERE �����̸� LIKE '����' );

-- 3�� ���� ��
SELECT sum(����)
FROM �󿵰�
WHERE �����ȣ = ( SELECT �����ȣ
                  FROM ����
                  WHERE �����̸� LIKE '����' );

-- �׷�����

-- 1�� ���� ��
SELECT �����ȣ, count(�󿵰���ȣ)
FROM �󿵰�
GROUP BY �����ȣ;

-- 2�� ���� ��
SELECT *
FROM �󿵰�
WHERE �����ȣ in( SELECT �����ȣ
                FROM ����
                WHERE ��ġ LIKE '���');

-- 3�� ���� ��
SELECT �����ȣ, count(����ȣ)
FROM ����
WHERE ��¥ = '20/09/01'
GROUP BY �����ȣ;

-- 4�� ���� ��
SELECT max(��ȭ����)
FROM �󿵰�, ����
WHERE �󿵰�.�����ȣ = ����.�����ȣ AND �󿵰�.�󿵰���ȣ = ����.�󿵰���ȣ AND ��¥ = '20/09/01'
                        GROUP BY ����.�����ȣ, ����.�󿵰���ȣ; 

-- DML
SELECT *
FROM �󿵰�;

-- 1�� ���� ��
INSERT INTO �󿵰�
        VALUES(3, 3, '�����:���Ǵ�Ƽ ��', 10000, 23);

INSERT INTO ��
        VALUES(10, '�ڻ��', '����');
        
INSERT INTO ����
        VALUES(4, 'CGV', '����');

INSERT INTO ����
        VALUES(3, 1, 10, 26, '20/09/01');


-- 2�� ���� ��        
UPDATE �󿵰�
SET ���� = ���� + ����/10; 