-- CREATE ��
-- 2022�� 5�� 3�� ȭ���� 8, 9���� --

CREATE TABLE Newbook -- Newbook ���̺� �����ϱ�
(
    bookid NUMBER PRIMARY KEY,                      -- "bookid" �Ӽ� ���� : ���������� ����
    bookname VARCHAR2(20) NOT NULL,                 -- "bookname" �Ӽ� ���� : ���������� ����
    publisher VARCHAR2(20)                          -- "bookname" �Ӽ� ���� : ���������� ����
    price NUMBER DEFAULT 10000 CHECK(price>1000)    -- "price" �Ӽ� ���� : ���������� ����
    -- �� �� �̻��� PK�� �����ϰ� ���� �� : 
    -- PRIMARY KEY (bookname, publisher)
);
    -- ������ CHAR(n), VARCHAR(n), VARCHAR2(n) ������
    -- CHAR(20) = ������ �޸𸮿� 20Byte�� �Ҵ���. ( �޸� ���� ����, �Է����� �ʾƵ� �����Ϳ� 0 ���� )
    -- VARCHAR, VARCHAR2 = �ڷ��� ũ�⸸ŭ �޸𸮰� �����. ���� ������ �޸�
    -- VARCHAR2 / VARCHAR = ���� ����, ���������δ� VARCHAR2�� ���� ȿ����

CREATE TABLE Neworder
(
    orderid NUMBER,
    custid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    saleprice NUMBER,
    orderdate DATE,                                 -- "orderdate" �Ӽ� ���� : ��¥���� ����
    PRIMARY KEY(orderid),
    FOREIGN KEY(custid) REFERENCES Newcustomer(custid) ON DELETE CASCADE
);
    -- Newcustomer�� �ִ� custid �Ӽ��� �����Ͽ� FK�� ����.
    -- ON DELETE CASCADE  --> ���� ���� ���̺��� �⺻ Ű�� ������� �����ϴ� �ܷ�Ű ���� ���� ������.
    -- ON DELETE SET NULL --> ���� ���� ���̺��� �⺻ Ű�� ������� �����ϴ� �ܷ�Ű ���� null  ����.
    -- ON DELETE RESTRICT --> ���� �ź�.

CREATE TABLE Newcustomer
(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40),
    address VARCHAR2(40),
    phone VARCHAR2(30)
);

-- �Ӽ��� ���� ��� ������׿� ���� �����ؾ� �� ������ ����� DROP(����) �� ���� �� �������־�� ������ �߻����� ����.
DROP TABLE Newbook;     -- "Newbook"     ���̺� �����ϱ�
DROP TABLE Newcustomer; -- "Newcustomer" ���̺� �����ϱ�
DROP TABLE Neworder;    -- "Neworder"    ���̺� �����ϱ�

--  NOT NULL ���� ���� : �����͸� ������ �� �ش� �Ӽ����� null�� ���� �����.
--  UNIQUE   ���� ���� : �ش� �Ӽ����� ������ �� �� �̻��� ���� ���ԵǸ� �����.
--  DEFAULT  ���� ���� : ���� �Ӽ����� null�̶�� DEFAULT���� �ڵ����� ����.
--  CHECK    ���� ���� : �Ӽ����� �������� ����. (�Ӽ��� ���� ���� ��ɾ�)

ALTER TABLE Newbook
RENAME CONSTRAINT SYS_C008547 TO Newbook_PK;
-- RENAME CONSTRAINT A TO B : ���� ���� A�� B�� �����Ű�� ��ɾ�
