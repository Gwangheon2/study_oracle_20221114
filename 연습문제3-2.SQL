--[연습문제3-2]

--1.사원 테이블에서 이름(first_name)이 A로 시작하는 모든 사원의 이름의 길이를 조회하시오
SELECT  employee_id, first_name, LENGTH(first_name) name_length
FROM    employees
WHERE   first_name LIKE 'A%'; -- % : 여러 문자열, _ : 한개 문자
order by 1; -- 10rows


--2. 80번 부서원의 이름과 급여를 조회하시오
--단, 급여는 15자 길이로 왼쪽에 $기호가 채워진 형태로 표시한다.
--LPAD, RTRIM, TRIM : 제거
--SUBSTR : 추출
--INSTR : 특정 문자의 시작 위치값 반환
--REPLACE, TRANSLATE : 문자열에서 특정 문자를 찾아서 변환 or 1:1변환
--LENGTH : 문자열의 길이를 반환
select  employee_id, first_name, LPAD(salary, 15, '$') salary
from    employees
where   department_id = 80; --34 rows



--3. 60번부서, 80번 부서, 100번 부서에 소속된 사원의 사번, 이름,전화번호, 전화번호의 지역번호를 조회하는
-- 쿼리문을 작성하시오
-- 단, 지역번호는 local number라고 표시하고 예를들어 515.123.4169라는 전화번호에서 515는 local number이다
select  employee_id, first_name,
        SUBSTR(phone_number, 1, instr(phone_number, '.')-1) "local number", --국번(첫번호)
        SUBSTR(phone_number, instr(phone_number, '.')+1) "Extra number" 
from    employees
where   department_id in (60, 80, 100)
order by 1; --45rows




























