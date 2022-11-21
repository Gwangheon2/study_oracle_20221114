--연습문제2-1
--hr 스키마를 이용해 문제를 해결 하시오

--1. 사번이 200인 사원의 이름과 부서번호를 조회하시오
-- (조건컬럼)
select employee_id emp_id, first_name||' '||last_name full_name
from    employees
where   employee_id = 200; -- 200번	Jennifer Whalen

--2. 급여가 3000에서 15000 사이에 포함되지 않는 사원의 사번, 이름 급여 정보를 조회하시오
-- (단, 이름은 이름과 성 사이에 공백을 두어 합쳐서 조회하고 ex> john +smith로 조화되게끔)

select  employee_id, first_name||' '||last_name, salary
from    employees
--where   salary NOT between 3000 and 15000;
where   salary < 3000
or      salary > 15000;

--3. 부서번호가 30과 60에 소속된 사원의 사번, 이름, 부서번호, 급여를 조회하시오
--이름은 알파벳 순서로 정렬하여 조회할것

select employee_id, first_name, department_id, salary
from    employees
where   department_id IN = (30, 60)
--where   department_id = 30
--or     department_id = 60; -- 11row
order by    first_name ASc;

--4.급여가 3000애소 15000사이 이면서, 부서번호가 30또는 60에 소속된 사원의 사번,이름,급여를 조회하는 쿼리를 작성하시오
--단, 이름과 성을 합쳐서 name으로, 월급여는 monthly salary로 조회되게 한다

select employee_id, first_name||' '||last_name name salary "Monthly Salary", department_id
from    employees
where   salary between 3000 and 15000
and     department_id In (30, 60); --7row

--5. 소속된 부서번호가 없는 사원의 사번, 이름, 업무ID를 조회하시오
select employee_id, first_name, job_id
from    employees
where   department_id IS NULL; --1row

--6. 커미션을 받는 사원의 사번, 이름, 급여, 커미션을 조회하는데 커미션이 높은 사원부터 낮은 사원 순서로 정렬하시오
select employee_id, first_name, salary, commission_pct
from    employees
where   commission_pct IS NOT NULL
order by    4 desc;

--7. 이름에 문자 z 가 포함된 사원의 사번과 이름을 조회하는 쿼리문을 작성한다.
--first_name : 이름
--last_name : 성
select employee_id, first_name
from    employees
where   first_name LIKE '%z%';









































