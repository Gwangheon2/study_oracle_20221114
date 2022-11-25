--[연습문제4-3]
--
--1. 사원테이블에서 똑같은 이름(=first_name)이 둘 이상 있는 이름과 그 이름이 모두 몇 명인지 조히하는 퀄리를 작성하시오
select first_name, count(first_name) cnt
from    employees
group by    first_name
having  count(first_name) >= 2;
--
--
--
--2.부서번호, 각 부서별 급여총액과 평균 급여를 조회하는 쿼리문을 작성하시오
--(단, 부서 평균 급여가 8000 이상인 부서만 조회되도록 하시오)
select  department_id, sum(salary), avg(salary)
from    employees
group by  department_id
having avg(salary) >= 8000
order by    1;
--
--
--
--3.년도, 년도별로 입사한 사원수를 조회하는 쿼리문을 작성하시오
--(단, 년돈는 2014의 형태로 표기되도록 하시오)
select to_char(hire_date, 'yyyy') year,
        count(hrie_date) cnt
from    employees
group by hire_date;

















