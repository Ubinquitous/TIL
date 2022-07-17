-- ALTER��, ���̺��� �����Ű�� ����

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
SELECT * FROM newbook; -- ALTER�� �����Ų ������ Ȯ���ϴ� �뵵

-- ALTER �Ӽ� �߰� �⺻ ����
-- ALTER TABLE "���̺� �̸�" ADD "�Ӽ��̸�" "�ڷ���";
-- 1�� ���� : newbook ���̺� VARCHAR2(13)�� �ڷ����� ���� isbn �Ӽ��� �߰��Ͻÿ�.
ALTER TABLE newbook ADD isbn VARCHAR2(13);

-- ALTER �Ӽ� Ÿ�� ���� �⺻ ����
-- ALTER TABLE "���̺� �̸�" MODIFY "�Ӽ��̸�" "����Ÿ��";
-- 2�� ���� : newbook ���̺��� isbn �Ӽ��� �ڷ����� number������ �����Ͻÿ�.
ALTER TABLE newbook MODIFY isbn NUMBER;

-- ALTER �Ӽ� ���� �⺻ ����
-- ALTER TABLE "���̺� �̸�" DROP COLUMN "�Ӽ��̸�";
-- 3�� ���� : newbook ���̺��� isbn �Ӽ��� �����Ͻÿ�.
ALTER TABLE newbook DROP COLUMN isbn;

-- �Ӽ��� ���� ���� �߰��ϱ�
-- ALTER TABLE "���̺� �̸�" MODIFY "�Ӽ��̸�" "�ڷ���" "��������"
-- 4�� ���� : newbook ���̺��� bookid �Ӽ��� not null ���� ������ �߰��Ͻÿ�.
ALTER TABLE newbook MODIFY bookid NUMBER NOT NULL;

-- �Ӽ� �⺻ Ű�� �����ϱ�
-- ALTER TABLE "���̺� �̸�" ADD PRIMARY KEY("�Ӽ�");
-- 5�� ���� : newbook ���̺��� bookid �Ӽ��� �⺻Ű�� �����Ͻÿ�.
ALTER TABLE newbook ADD PRIMARY KEY(bookid);

-- INSERT�� = �����͸� �����ϴ� ����
-- INSERT�� �⺻ ����
-- INSERT INTO "���̺��̸�"(�Ӽ���1, �Ӽ���2, ...) => ��ü �Ӽ����� ��� �ʿ��ϴٸ� ������ ������.
--      VALUES(�� ����); => �� ������ �Ӽ��� ������ ���ƾ���, �� �Ӽ������� ������ ���� �ʾƵ� ���� ����.


SELECT * 
FROM book;

-- 1�� ���� : BOOK ���̺� ���ο� ���� '������ ����'�� �����Ͻÿ�. 
-- '������ ����'�� �Ѽ����м������� �Ⱓ������ ������ 90,000���̴�.

INSERT INTO book(bookid, bookname, publisher, price) -- ��� �࿡ ������ ��� ��ȣ ���� ����
        VALUES(11, '������ ����', '�Ѽ����м���', 90000);
        
-- 2�� ���� : book ���̺� ���ο� ���� '������ ����'�� �����Ͻÿ�.
-- '������ ����'�� �Ѽ����м������� �Ⱓ������ ������ �����̴�.

INSERT INTO book(bookid, bookname, publisher)
        VALUES(14, '������ ����', '�Ѽ����м���');

SELECT * 
FROM imported_book; -- ���Ե��� ���
-- 3�� ���� : ���Ե��� ���(imported_book)�� book ���̺� ��� �����Ͻÿ�.
-- VALUE ��� SELECT������ �ٷ� ������.
-- SELECT�� INSERT INTO�ϴ� ���� : �����ϰ��� �ϴ� ���̺��� �ڷ����� SELECT�ϴ� ���̺��� �ڷ����� ��ġ�ؾ� ���� �߻� X.

INSERT INTO book(bookid, bookname, publisher, price)
        SELECT bookid, bookname, publisher, price
        FROM imported_book;
        
-- UPDATE�� : �̹� ���ԵǾ� �ִ� ������ ���� ������ �� ���.
-- UPDATE�� �⺻ ����

-- UPDATE "���̺��̸�"
-- SET "�Ӽ��̸�"='�Ӽ���'
-- WHERE "����";
SELECT * FROM customer;
-- 1�� ���� : CUSTOMER ���̺��� ����ȣ�� 5�� ���� �ּҸ� '���ѹα� �λ�'���� �����Ͻÿ�.
UPDATE customer
SET address = '���ѹα� �λ�'
WHERE custid = 5; 

-- 2�� ���� : customer ���̺��� �ڼ��� ���� �ּҸ� �迬�� ���� �ּҷ� �����Ͻÿ�.
UPDATE customer
SET address = ( SELECT address
                FROM customer
                WHERE custid = 2)
WHERE name LIKE '�ڼ���';

-- DELETE�� : ���� ���ԵǾ� �ִ� �����͵��� �����ϰ� ���� �� ���.
-- DELET�� ���� �⺻ ����

SELECT *
FROM customer;

-- DELETE 
-- FROM ���̺��̸�
-- WHERE ����

-- 1�� ���� : customer ���̺��� ����ȣ�� 5�� ���� ������ �� ��� Ȯ��

DELETE
FROM customer
WHERE custid = 5;

-- 2�� ���� : ��� ���� �����Ͻÿ�.
DELETE FROM customer;
-- Ȯ����Ű���� Ŀ���� ���־�� �ϴµ�, Ŀ���� ���� �ʾҴٸ� ROLLBACK������ ���� �� ������ ���� �� ����.
ROLLBACK;