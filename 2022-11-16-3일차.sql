---- 테이블 구조 조회
--DESC 테이블명
--
----테이블 데이터 조회
--SELECT 컬럼
--
--
--
--/*=====================================
--조건절을 구성하는 항목에 분루
--============================================*/
--1) 컬럼, 숫자, 문자
--2) 산술연산자 : +, -, *, /, 비교 연산자 : =, >=, <=, <, >, !=, <>, (문자)연결 연산자(||) 
--3) AND, OR, NOT : 논리 연산자
--4) LIKE, IN, BETWEEN, EXISTS, NOT
--5) IS NULL, IS NOT NULL
--6) ANY, SOME, ALL
--7) 함수(어떤 작없을 수행하는 명령어의 단위) (va 프로시지)

2.3연산자
2.3.1산술연산자 : +,-,*,/
SELECT 2 + 2, 2 - 1, 2 * 3, 4 / 2
FROM dual; -- dual : 가짜 테이블 (=실제 존재하지 않는 가상의 테이블인 dual로 연산 처리)

[예제2-4] 80년 부서 사원의 한 해 동안 받은 급여을 조회하시오
--사원들의 정보는 EMPLOYEES 라는 테이블에 저장되어 있음
--사원이 근무하는 부서의 정보는 DEPARTMENTS라는 테이블에 저장되어 있음
SELECT  employee_id, last_name, salary * 12
FROM    employees
WHERE   departmment_id = 80; -- 34rows

SELECT department_name, manger_id
FROM    departmment
WHERE departmment_id = 80;

[예제2-5] 한 해 동안 받은 급여가 120000인 사원을 조회하시오
--* : aesterisk, 만능문자/ 모든 문자열을 대체 (= 모든 컬럼을 뜻함, 사번~ 부서코드까지)
SELECT *
FROM    employees
WHERE   slary*12 = 120000;


























