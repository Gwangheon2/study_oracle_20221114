































2-2 조건절
전체 데이터에서 특정 행 데이터를 제한하여 조회하기 위하여 사용

SEKECT 컬럼1, 컬럼2,...      (3) 원하는 컬럼만 조회
FROM 테이블 이름             (1) 실행
WHERE 조건을 나열;           (2) 실행(=필터링)


[예제2-3] 80번 부서원의 사원 정보를 조회하시오.
SELECT *
FROM employees
WHERE department_id = 80; --같다 연산자 : = (equal)
--키보드 스페이스바

SELECT  *
FROM    employees
WHERE   department_id = 80;
--키보드tap 키사용


SELECT
    *
FROM
    employees
WHERE
    department_id = 80;
--블럭씌우고 cral+f7 

--그러면, 전체 부서는 몇개나?
DESC departments;
SELECT  *
FROM    departments; -- 27 rows


















