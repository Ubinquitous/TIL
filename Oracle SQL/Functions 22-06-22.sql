-- ���� �Լ�
SELECT ABS(-26)
FROM dual; -- 26

-- �ø� �Լ�
SELECT CEIL(15.3) 
FROM dual; -- 16

-- ���� �Լ�
SELECT POWER(2,10)
FROM dual; -- 1024

-- �ݿø� �Լ�
SELECT ROUND(15.4)
FROM dual; -- 15

-- ���ڿ� ���� �Լ�
SELECT CONCAT('Hello, ', 'World!') -- ( '������ ���ڿ�1', '������ ���ڿ�2' )
FROM dual; -- Hello, World!

-- ���ڿ� ���� �Ҵ�
SELECT LPAD('Page 1', 10, '*') -- ( '������ ���ڿ�', '�Ҵ��� �ڸ���', 'ä������ ����' ) 
FROM dual; -- ****Page 1

-- ���ʺ��� ���� ����
SELECT LTRIM('From Korea', 'Fomr orK') -- ( '���ڿ�', '������ ����' )
FROM dual; -- ea

-- ���ڿ� ��ȯ
SELECT REPLACE('Jack', 'J', 'Bl') -- ( '���ڿ�', '�����ų ���ڿ�', '������ ���ڿ�')
FROM dual; -- Black

-- ���ڿ� ������ �Ҵ�
SELECT RPAD('Page 1', 10, '*') -- ( '������ ���ڿ�', '�Ҵ��� �ڸ���', 'ä������ ����' ) 
FROM dual; -- Page 1****

-- �����ʺ��� ���� ����
SELECT RTRIM('From Korea', 'rea') -- ( '���ڿ�', '������ ����' )
FROM dual; -- From Ko

-- ���ڿ� �κ� ���
SELECT SUBSTR('Lionel Messi', 2, 7) -- ( '���ڿ�', '������ ���� ��', '����� ���� ��' )
FROM dual; -- ionel M

-- �ƽ�Ű�ڵ� �ڵ��ȣ ���
SELECT ASCII('D')
FROM dual; -- 68

-- ���ڿ� �˻�
SELECT INSTR('CORPORATE FLOOR', 'OR', 3, 2) -- ( '���ڿ�', '�˻��� ���ڿ�', '������ ���� ��', '����' )
FROM dual; -- 14, �˻��� ���ڿ� ��ȣ ���

-- ���� ��¥ ���
SELECT SYSDATE
FROM dual;

-- �� ���� ���� ��� NULL ���
SELECT NULLIF(205, 205) -- ( '�񱳽�1', '�񱳽�2' )
FROM dual; -- NULL

-- �⺻���� NULL�̸� ������ ���
SELECT NVL(NULL, 1516) -- ( '�⺻��', '������' )
FROM dual; -- 1516, NULL�� �ƴϸ� �⺻�� ���

