CREATE TABLE �й�
(
    �г� NUMBER,
    �� NUMBER,
    PRIMARY KEY (�г�,��)
);

CREATE TABLE �б�
(
    �г� NUMBER,
    �� NUMBER,
    �а� VARCHAR2(50),
    ���� VARCHAR(50),
    �δ��� VARCHAR(50),
    PRIMARY KEY (�г�,��),
    FOREIGN KEY(�г�,��) REFERENCES �й�(�г�,��)
);

CREATE TABLE �л�
(
    �г� NUMBER,
    �� NUMBER,
    ��ȣ NUMBER,
    �̸� VARCHAR2(50),
    ���� VARCHAR2(50),
    PRIMARY KEY (�г�, ��, ��ȣ),
    FOREIGN KEY(�г�,��) REFERENCES �й�(�г�,��)
);

INSERT INTO �й� VALUES(1, 1);
INSERT INTO �й� VALUES(1, 2);
INSERT INTO �й� VALUES(1, 3);
INSERT INTO �й� VALUES(1, 4);
INSERT INTO �й� VALUES(2, 1);
INSERT INTO �й� VALUES(2, 2);
INSERT INTO �й� VALUES(2, 3);
INSERT INTO �й� VALUES(2, 4);

INSERT INTO �б� VALUES(1, 1, '-', '��*��', '��*��');
INSERT INTO �б� VALUES(1, 2, '-', '��*��', '��*��');
INSERT INTO �б� VALUES(1, 3, '-', '��*��', '��*��');
INSERT INTO �б� VALUES(1, 4, '-', '��*��', '��*��');
INSERT INTO �б� VALUES(2, 1, '����Ʈ����߰�', '��*��', '��*��');
INSERT INTO �б� VALUES(2, 2, '����Ʈ����߰�', '��*��', '��*��');
INSERT INTO �б� VALUES(2, 3, '�Ӻ�������Ʈ�����', '��*��', '��*��');
INSERT INTO �б� VALUES(2, 4, '�Ӻ�������Ʈ�����', '��*��', '��*��');

INSERT INTO �л� VALUES(1, 1, 1, '��*��', '��');
INSERT INTO �л� VALUES(1, 1, 2, '��*��', '��');
INSERT INTO �л� VALUES(1, 1, 3, '��*��', '��');
INSERT INTO �л� VALUES(1, 2, 1, '��*��', '��');
INSERT INTO �л� VALUES(1, 2, 2, '��*��', '��');
INSERT INTO �л� VALUES(1, 2, 3, '��*��', '��');
INSERT INTO �л� VALUES(1, 3, 1, '��*��', '��');
INSERT INTO �л� VALUES(1, 3, 2, '��*��', '��');
INSERT INTO �л� VALUES(1, 3, 3, '��*��', '��');
INSERT INTO �л� VALUES(1, 4, 1, '��*��', '��');
INSERT INTO �л� VALUES(1, 4, 2, '��*��', '��');
INSERT INTO �л� VALUES(1, 4, 3, '��*��', '��');
INSERT INTO �л� VALUES(2, 1, 1, '��*��', '��');
INSERT INTO �л� VALUES(2, 1, 2, '��*��', '��');
INSERT INTO �л� VALUES(2, 1, 3, '��*��', '��');
INSERT INTO �л� VALUES(2, 2, 1, '��*��', '��');
INSERT INTO �л� VALUES(2, 2, 2, '��*��', '��');
INSERT INTO �л� VALUES(2, 2, 3, '��*��', '��');
INSERT INTO �л� VALUES(2, 3, 1, '��*��', '��');
INSERT INTO �л� VALUES(2, 3, 2, '��*��', '��');
INSERT INTO �л� VALUES(2, 3, 3, '��*��', '��');
INSERT INTO �л� VALUES(2, 4, 1, '��*��', '��');
INSERT INTO �л� VALUES(2, 4, 2, '��*��', '��');
INSERT INTO �л� VALUES(2, 4, 3, '��*��', '��');

SELECT �б�.�г�, �б�.��, �л�.��ȣ, �л�.�̸�, �л�.����, �б�.�а�, �б�.����, �б�.�δ���
FROM �б�, �л�
WHERE �б�.�г� = �л�.�г� AND �б�.�� = �л�.��;