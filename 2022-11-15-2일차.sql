































2-2 ������
��ü �����Ϳ��� Ư�� �� �����͸� �����Ͽ� ��ȸ�ϱ� ���Ͽ� ���

SEKECT �÷�1, �÷�2,...      (3) ���ϴ� �÷��� ��ȸ
FROM ���̺� �̸�             (1) ����
WHERE ������ ����;           (2) ����(=���͸�)


[����2-3] 80�� �μ����� ��� ������ ��ȸ�Ͻÿ�.
SELECT *
FROM employees
WHERE department_id = 80; --���� ������ : = (equal)
--Ű���� �����̽���

SELECT  *
FROM    employees
WHERE   department_id = 80;
--Ű����tap Ű���


SELECT
    *
FROM
    employees
WHERE
    department_id = 80;
--������� cral+f7 

--�׷���, ��ü �μ��� ���?
DESC departments;
SELECT  *
FROM    departments; -- 27 rows


















