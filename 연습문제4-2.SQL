[연습 문제4-2]
--
--1. 사원 테이블에서 커미션을 받는 사원이 모두 몇 명인지 그 수를 조회하시오
--COUNT(1) : 컴럼의 데이터가 있는 갯수, NULL 제외
SELECT COUNT(COMMISSION_PCT) CNT
FROM    EMPLOYEES; 
--
--
--2. 가장 최근에 뽑은 직원을 입사시킨 날짜가 언제인지 최근 입사일자를 조회하시오
-- MAX(HIRE_DATE): 가장 최근 입사자의 입사일 (=나중)
-- MIN(HIRE_DATE): 가장 마지막 입사자의 입사일 (=먼저)
-- *MAX(), MIN() : 모든 입사자의 입사일
SELECT MAX(HIRE_DATE)
FROM    EMPLOYEES
WHERE   MANAGER_ID IS NOT NULL

--
--3.90번 부서의 평균 급여액을 조회하시오 (단, 평균급여액은 소수 둘째자리 까지 표시하시오)

SELECT  ROUND(AVG(salary), 2) AVG_SAL1,
        ROUND(SUM(SALARY) / COUNT(EMPLOYEE_ID), 2) AVG_SAL2
FROM    EMPLOYEES
WHERE   DEPARTMENT ID = 90;
--
--
--
--


























