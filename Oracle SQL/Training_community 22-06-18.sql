-- 1�� ���� ��
CREATE TABLE MyUser
(
    USER_SEQ NUMBER PRIMARY KEY,
    ID VARCHAR2(20),
    USER_NAME VARCHAR2(20),
    DATETIME DATE
);
INSERT INTO MyUser VALUES(1, 'lee1545', '�̼���', '22-05-04');
INSERT INTO MyUser VALUES(2, 'lee1502', '��Ȳ', '22-05-01');
INSERT INTO MyUser VALUES(3, 'lee1536', '����', '22-05-02');
INSERT INTO MyUser VALUES(4, 'lee1397', '�������', '22-05-03');
INSERT INTO MyUser VALUES(5, 'shin1504', '�Ż��Ӵ�', '22-05-05');

-- 2�� ���� ��
CREATE TABLE Category
(
    CATEGORY_SEQ NUMBER PRIMARY KEY,
    NAME VARCHAR2(20)
);
INSERT INTO Category VALUES(1, '����');
INSERT INTO Category VALUES(2, '����');
INSERT INTO Category VALUES(3, '��ȭ����');

-- 3�� ���� ��
CREATE TABLE POST
(
    POST_SEQ NUMBER PRIMARY KEY,
    CATEGORY_SEQ NUMBER,
    USER_SEQ NUMBER,
    TITLE VARCHAR2(40),
    CONTENT VARCHAR2(4000),
    DATETIME DATE,
    FOREIGN KEY (Category_SEQ) REFERENCES Category (Category_SEQ),
    FOREIGN KEY (USER_SEQ) REFERENCES MyUser (USER_SEQ)
);
INSERT INTO POST VALUES(1, 1, 1, '������ ����', '�⺻�� ���翡�� ������������ ������ ��ġ�� ���(�ɼ� Ŭ�ο�)�� �������� ����ġ�� ��ġ�� 2���� �Ͽ� ��ȸ�� ������ ������ �����ϴ� ����̴�. �ѴϹ� �ٸ�ī�� ĭ���� �������� ����� �⵿ �⸶�� 2�δ븦 �̿��ϰ� �ڽ��� �������� ������� ���� ����Ͽ� �¸��� �ŵ״� �����̴�. �����ε��� �̸� ���� ���������� �θ����� ���� ������ �⺻�� ���񱺴� 2���� �߰��� ����Ͽ� �������� �ϼ���Ų ���´�. ��, �̰��� �������� ����� �⸶���� �⵿���� �̿��� ������ �����̶� ���̴�.', '92-08-14');
INSERT INTO POST VALUES(2, 3, 4, '�ƹ�����', '�ƹ�����(��������)�� �鼺�� ����ġ�� �ٸ� �Ҹ���� ���̴�. �ƹ������̶�� �θ��� ����� �� ������ �ִµ�, �� �ϳ��� 1443�� ���� 12��(��� 1444�� 1��)�� ��������� ���� �ѱ����� ǥ�� ü��, �� ���ó��� �ѱ��� â�� ��ÿ� �θ� �̸��̰�, �� �ϳ��� 1446�� 9��[1]�� �߰��� å �̸��̴�. ���⼭�� ����, �� �ƹ������̶�� å�� �����Ѵ�.', '46-10-09');
INSERT INTO POST VALUES(3, 1, 5, '�Ż��Ӵ翡 ����', '�Ż��Ӵ� [��������, 1504~1551] ������ ���(��ߣ)�̰�, ȣ�� ���Ӵ�(������:������:������)�����Ӵ�(�����)���ӻ���(�����)�̴�. ������ ����(˰��) ����̸�, ���� ����(���)�� ��Ӵ��̴�. ȿ���� �����ϰ� ������ �������� ��������� �湮(����)�� ������ ���塤ħ��(����)���ڼ�(��)�� ��������, Ư�� �ù�(����)�� �׸��� �پ ���� ���� �ѽ�(����) ��ǰ�� ��������. ���� �Ȱ�(��̱)�� ������ ���� ȭǳ(����)�� ���� Ư���� ���� �������� ���Ͽ� �ѱ� ������ ����ȭ����� ���� ��´�. ���(ߣ�)��������Ǯ������ ���� �� �׷ȴ�. �ڳ౳������ ���ٸ� ����� ��￩ �����ó(��ٽ����)�� �Ͱ�(Т��)�� �Ǿ���. ������ ��Ӵ��̴�.', '04-10-29');
INSERT INTO POST VALUES(4, 2, 3, '�ʸ��纴��', '���̴� �������� 10�� �纴���� �����Ͽ� ������ �ݰ��� ��⵵ �Ͽ���.[19] �״� �Ϻ��� �����ô�� ����� ���̸�, �Ϻ��� ������ ����� �Ϻ� �� ���� �� ���� ��ȭ�� ���� ���ɻ縦 �ٸ� ������ ������ ���� �������� �̱��� ���� ������ ħ���� ���̶�� �����ߴ�. �Ϻ��� ���߿� ���� �������� �״� 10�� ���� ������ �缺�Ͽ� �Ϻ��� ħ���� ����� ���� �����Ͽ���. �׷��� ���� �̷��� ���ش� ���ο� ���� ���� ��Ȥ�ϱ� ���� �߾����� ġ�εǾ���, �������� ���� ������ ����ģ ���°� ����̶�� ȣ�������� �ʾҴ�. ���̰� 10�� �纴���� �����ϴ� ���, ������ �� ���¼��� ��λ����δ� 30�� ���� �Ѿ�����, ���� ���� ������ ���� ���ڴ� 1,000�� ������ �Ǿ��ٰ� �Ѵ�.[20] 1581�� ������ ���� �� �������� �����ϴ� ���濬�ϱ⡷�� �ϼ��� ���Ҵ�. �Ż��Ӵ��� �Ƶ��̴�.', '83-01-01');

-- 4�� ���� ��
CREATE TABLE MyComment
(
    COMMENT_SEQ NUMBER PRIMARY KEY,
    POST_SEQ NUMBER,
    USER_SEQ NUMBER,
    CONTENT VARCHAR2(4000),
    DATETIME DATE,
    PARENT NUMBER,
    FOREIGN KEY (POST_SEQ) REFERENCES POST (POST_SEQ),
    FOREIGN KEY (USER_SEQ) REFERENCES MyUser (USER_SEQ),
    FOREIGN KEY (PARENT) REFERENCES MyComment (COMMENT_SEQ)
);
INSERT INTO MyComment VALUES(1, 1, 2, '�ѻ굵 ��ø(��ߣ������) Ȥ�� �߳�����ø(̸Ҭ������)�� 1592�� 8�� 14��(���� 25�� ���� 7�� 8��) �뿵 �ѻ굵 �չٴٿ��� ���� ������ �ֱ��� ũ�� ��� ����', '22-05-01', NULL);
INSERT INTO MyComment VALUES(2, 1, 3, '�� �������� �������� ����ϴ� ���� ���� ���� ������ �������� ó������ �������� ���ƴ�.', '22-05-01', 1);
INSERT INTO MyComment VALUES(3, 3, 2, '������ ��Ӵ� �Ż��Ӵ�', '22-05-01', NULL);
INSERT INTO MyComment VALUES(4, 2, 1, '�����ٶ󸶹ٻ�', '22-05-01', NULL);

-- 6�� ���� �� 
SELECT NAME
FROM Category;

-- 7�� ���� ��
SELECT COMMENT_SEQ, CONTENT, PARENT
FROM MyComment
WHERE PARENT > 0;

SELECT CONTENT
FROM POST;

-- 8�� ���� ��
SELECT CONTENT, ID, USER_NAME
FROM POST 
INNER JOIN MyUser
ON POST.USER_SEQ = MyUser.USER_SEQ
WHERE CONTENT LIKE '%�Ż��Ӵ�%';

-- 9�� ���� �� 
SELECT Category.NAME, POST.POST_SEQ, POST.TITLE, MyUser.USER_NAME, TO_CHAR(POST.DATETIME, 'YYYY/MM/DD') AS ��¥, count(*)
FROM POST 
JOIN Category ON POST.CATEGORY_SEQ = Category.CATEGORY_SEQ
JOIN MyComment ON POST.POST_SEQ = MyComment.POST_SEQ
JOIN MyUser ON POST.USER_SEQ = MyUser.USER_SEQ
GROUP BY Category.name, POST.POST_SEQ, POST.TITLE, MyUser.USER_NAME, POST.DATETIME, MyComment.POST_SEQ;


-- 10�� ���� ��
UPDATE Category
INNE
SET '����' LIKE '��ȭ����'
WHERE POST_SEQ = 3;
