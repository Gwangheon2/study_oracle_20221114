5.6 ANSI JOIN(p48)







5.6.1 (Oracle JOIN) JOIN
-- Cartesian Product : 카테시안 곱(=JOIN하는 테이블의 각각 rows수만큼 곱한 결과행, 잘못된)
-- EAUI-JOIN VS NON-EQUI JOIN(거의 사용 안함)
-- OUTER JOIN (VS INNER JOIN-실제 존재X개념상)
5.6.2 



--INNER JOIN : 오라클의 EQUI-JOIN과 같은 기능을 하는 JOIN형식
--1) FROM절에 INNER JOIN을 명시
--2) JOIN 조건은 ON 절에 명시


[예제5-10]
                                       

--OUTER JOIN [LEET | RIGHT | FULL] : OUTER(데이터중 NULL이 있는곳의 반대)








[문제5-15]사원의 사번, 이름, 부서코드, 부서명, 위치코드, 도시의 이름을 조회하시오
SELECT  epmployee_id, e.first_name, e.department_id,
        d.department_name, l.location_id,
        l.city
FORM    employees e, departments d, locations l
WHERE   e.department_id = d.department_id
AND     d.location_id = l.location_id
ORDER BY 1;


-- outer join [left |

--[예제 5-16] 사원의 사번, 이름,부서토드, 부서명, 정보를 조회한다
select  e.mployee_id, e.firse_name, e.department_id,
        d.department_name
from    employees e, departments d
where   e.department_id = d.department_id(+)
and     e.manager_id IS NOT NULL
order by 1;

-- ANSI 조인 > outer join
select  e.mployee_id, e.firse_name, e.department_id,
        d.department_name
from    employees e full outer join departments d
--on      e.department_id = d.department_id
using   (department_id)
where   e.manager_id IS NOT null
order y 1;


[연습문제5-2]

1. 사번이 110, 130, 150에 해당하는 사원의 사번, 이름, 부서명을 조회하시오
select  e.employee_id, e.first_name,
        d.department_name
from    employees e, departments d
where   e.department_id = d.department_id(+)
and     e.employee_id in(110,130,150)
order by 1;

1-2. ansi 조인
select  e.employee_id, e.first_name,
        d.department_name
from    employees e INNER JOIN departments d
on      e.department_id = d.department_id
and     e.employee_id in(110,130,150)
order by 1;


2.모든 사원의 사번, 이름, 부서명, 업무코드, 업무제목을 조회하시오
--2-1. 오라클 조인
select  e.employee_id, e.first_name,
        d.department_name,
        j.job_id, j.job_title
from    employees e, departments d, jobs j
where   e.department_id = d.department_id(+)
and     e.job_id = j,job_id(+)
and     e.manager_id IS NOT NULL
order by 1;

--2-2. ansi 조인

select  e.employee_id, e.first_name,
        d.department_name,
        j.job_id, j.job_title
from    employees e left outer join departments d
on     e.department_id = d.department_id
full outer join jobs j
on     e.job_id = j,job_id
where     e.manager_id IS NOT NULL
order by 1;


--직접 만들어서 join연산을 해보자
--무엇을 만들지 생각? 서비스, 기능
============================모델링==============
--사원vs부서<-->업무로 파악 : ex> ERP 시스템(사내 자원을 관리 시스템)
--엔터티: 현실세계의 객체(사람, 물건,..) ==> 컴퓨터세계 ==> TABLE
--애트리뷰트(=속성) : 이름, 사번, 급여...              ==> column
--사원의 부서에 포함된다(관계) vs 글  : (계시판에) 포함된다   vs  고객  : 구매한다
                               작성자
--부서는 사원을 포함한다 (관계)  vs 게시판  :       포함한다  vs  상품  : 구매되어진다
--현실의 업무를 컴퓨터 상으로 옮기는 과정 <==> 모델링 [모델러, DBA]
--        시스템을 구동하는 프로그램을 제작, UI 작성 : 개발자

-- 글 엔터티 <----> POST 테이블을 작성
-- 한줄 게시판 : ex> 출석 게시판, 낙서 게시판...

CREATE TABLE POST(
    POST_ID NUMBER PRIMARY KEY,
    POST_TITLE VARCHAR2(30) NOT NULL,
    POST_WRITER NUMBER NOT NULL,
    POST_DATE DAATE DEFAULT SYSDATE
);

--작성자 게시판 : 어느글을 누가 썼는지 상세한 정보를 담는.. 이름/ 이메일/ 전화번호
CREATE TABLE WRITER(
    WRITER_ID NUMBER PRIMARY KEY,
    WRITER_NAME VARCHAR2(30) NOT NULL,
    WRITER_DATE DAATE DEFAULT SYSDATE
    WRITER_EMAIL VARCHAR2(50)
);

ALTER TABLE POST
ADD CONSTERINT POST_WRITER_FK FOREIGN KEY (POST_WRITER) REFERENCES WRITER (WRITER_D);

--아무 작성자를 입력 가능 + FK 제약조건: WRITER에 없는 사용자가 POST를 등록하지 못하게
--1.WRITER 정보를 입력
INSERT INTO WRITER
VALUES (1, '홍길동' SYSDATE, 'gildong@naver.ccom');
INSERT INTO WRITER
VALUES (2, '김길동' SYSDATE, 'gildong222222@naver.ccom');
INSERT INTO WRITER
VALUES (3, '박길동' SYSDATE, 'gildong333333@naver.ccom');

SELECT *
FROM    WRITER;

--2. POST 정보를 입력
INSERT INTO POST
VALUES (0001, '오라클 DBMS에 학습하기', 1, SYSDATE);
INSERT INTO POST
VALUES (0002, '혼자서 공부하는 JAVA 심화', 1, SYSDATE);
INSERT INTO POST
VALUES (0003, '1인 개발자의 공부법', 2, SYSDATE);

--JOIN 조회
--오라클 조인
SELECT P.POST_ID, P.POST_TITLE, P.POST_DATE WRITE_DATE;
       W.WRITER_NAME, W.WRITER_EMAIL
FROM   POST P, WRITER W
WHERE  P.POST_WRITER = W.WRITER_ID;






















