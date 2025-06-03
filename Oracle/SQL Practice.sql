
create table dept(
  deptno number(2,0),
  dname  varchar2(14),
  loc    varchar2(13),
  constraint pk_dept primary key (deptno)
);
 
create table emp(
  empno    number(4,0),
  ename    varchar2(10),
  job      varchar2(9),
  mgr      number(4,0),
  hiredate date,
  sal      number(7,2),
  comm     number(7,2),
  deptno   number(2,0),
  constraint pk_emp primary key (empno),
  constraint fk_deptno foreign key (deptno) references dept (deptno)
);


DECLARE

BEGIN

insert into dept
values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept
values(20, 'RESEARCH', 'DALLAS');
insert into dept
values(30, 'SALES', 'CHICAGO');
insert into dept
values(40, 'OPERATIONS', 'BOSTON');
 
insert into emp
values(
 7839, 'KING', 'PRESIDENT', null,
 to_date('17-11-1981','dd-mm-yyyy'),
 5000, null, 10
);
insert into emp
values(
 7698, 'BLAKE', 'MANAGER', 7839,
 to_date('1-5-1981','dd-mm-yyyy'),
 2850, null, 30
);
insert into emp
values(
 7782, 'CLARK', 'MANAGER', 7839,
 to_date('9-6-1981','dd-mm-yyyy'),
 2450, null, 10
);
insert into emp
values(
 7566, 'JONES', 'MANAGER', 7839,
 to_date('2-4-1981','dd-mm-yyyy'),
 2975, null, 20
);
insert into emp
values(
 7788, 'SCOTT', 'ANALYST', 7566,
 to_date('9-12-1981','dd-mm-yyyy'),
 3000, null, 20
);
insert into emp
values(
 7902, 'FORD', 'ANALYST', 7566,
 to_date('3-12-1981','dd-mm-yyyy'),
 3000, null, 20
);
insert into emp
values(
 7369, 'SMITH', 'CLERK', 7902,
 to_date('17-12-1980','dd-mm-yyyy'),
 800, null, 20
);
insert into emp
values(
 7499, 'ALLEN', 'SALESMAN', 7698,
 to_date('20-2-1981','dd-mm-yyyy'),
 1600, 300, 30
);
insert into emp
values(
 7521, 'WARD', 'SALESMAN', 7698,
 to_date('22-2-1981','dd-mm-yyyy'),
 1250, 500, 30
);
insert into emp
values(
 7654, 'MARTIN', 'SALESMAN', 7698,
 to_date('28-9-1981','dd-mm-yyyy'),
 1250, 1400, 30
);
insert into emp
values(
 7844, 'TURNER', 'SALESMAN', 7698,
 to_date('8-9-1981','dd-mm-yyyy'),
 1500, 0, 30
);
insert into emp
values(
 7876, 'ADAMS', 'CLERK', 7788,
 to_date('12-1-1983', 'dd-mm-yyyy'),
 1100, null, 20
);
insert into emp
values(
 7900, 'JAMES', 'CLERK', 7698,
 to_date('3-12-1981','dd-mm-yyyy'),
 950, null, 30
);
insert into emp
values(
 7934, 'MILLER', 'CLERK', 7782,
 to_date('23-1-1982','dd-mm-yyyy'),
 1300, null, 10
);
 
/*
insert into salgrade
values (1, 700, 1200);
insert into salgrade
values (2, 1201, 1400);
insert into salgrade
values (3, 1401, 2000);
insert into salgrade
values (4, 2001, 3000);
insert into salgrade
values (5, 3001, 9999);
*/
 
COMMIT;

END;



SELECT * FROM EMP;


--SELECT <column>
--FROM <table>


SELECT JOB
FROM EMP;


SELECT JOB, ENAME
FROM EMP;


SELECT *
FROM EMP;


SELECT JOB, ENAME
FROM EMP;


SELECT JOB from emp;


SELECT DNAME, LOC from dept;


SELECT distinct job from emp;


SELECT *
FROM EMP
WHERE job = 'MANAGER'


SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
AND SAL = 1600
AND COMM = 300
AND DEPTNO = 30



SELECT ENAME "EMPLOYEE NAME", SAL SALARY, COMM COMMISSION
FROM EMP;


SELECT 'hello my name is ' || ename as "concatenated value"
FROM EMP
WHERE job = 'MANAGER'

-- Create Query that looks like:
-- King makes $5000 per month 
-- Blake makes $2850 per month 
-- Clark makes $2450 per month 
SELECT ename || ' makes $' || sal || ' per month' as "employee income"
FROM EMP


-- ORDER BY 
SELECT *
FROM emp
ORDER BY ENAME


SELECT *
FROM emp
ORDER BY SAL


-- ORDER BY descending order
SELECT *
FROM emp
ORDER BY SAL DESC


-- ORDER BY ascending order
SELECT *
FROM emp
ORDER BY SAL ASC


SELECT DEPTNO, SAL, ENAME
FROM EMP
ORDER BY DEPTNO, SAL


SELECT *
FROM EMP
ORDER BY DEPTNO, SAL




SELECT 'my name is ' || ename
FROM EMP


SELECT concat('my name is ', ename)
FROM EMP


SELECT upper('hello')
from emp

SELECT 'hello'
from emp
where deptno = 20


select upper('hello')
from DUAL


select lower('hello')
from DUAL 


SELECT 'pizza' as FOOD, 'fanta' as drink, concat('hello', ' John') from dual


SELECT 'pizza' as FOOD, 'fanta' as drink, concat('hello', ' John') as "This is a func" from dual


SELECT concat(lower(ename), ' is the name') from emp


SELECT concat(lower(ename), upper(' is the name')) from emp
where deptno = 20

-- Solution to assignment 
SELECT concat(concat(lower(ename), upper(' is the name')), concat(' and their job is: ', job)) as "function call" from emp
where deptno = 20


select max(sal) from emp


select max(sal) as max_sal from emp


select min(sal) as min_sal from emp


select sum(sal) as sum_sal from emp


SELECT * from emp
where lower(job) like '%manager%'


SELECT max(sal) from emp
where lower(job) like '%manager%'


SELECT max(sal) from emp
where job = 'MANAGER'


SELECT avg(sal) as avg_sal from emp


SELECT count(ename) as count from emp


SELECT count(sal) as count from emp


SELECT count(*) as count from emp


SELECT count(comm) as count from emp


SELECT sum(sal) / count(*) as computed_avg, avg(sal) as native_avg from emp


SELECT sum(sal) + avg(sal) as computed from emp 


SELECT sum(sal) as sum, avg(sal) as avg, max(sal) as max, min(sal) as min, count(*)
from emp


SELECT avg(sal)
from emp
where job = 'SALESMAN'


SELECT avg(sal)
from emp
where job = 'CLERK'


SELECT avg(sal)
from emp
where job = 'MANAGER'


SELECT avg(sal), job
from emp
GROUP BY job


SELECT job
from emp
GROUP BY job


SELECT count(*), job
from emp
GROUP BY job


SELECT min(sal), job
from emp
GROUP BY job


SELECT distict job from emp


SELECT count(*), job
from emp
GROUP BY job
HAVING count(*) = 2


SELECT job
from emp
GROUP BY job
HAVING count(*) = 2


--1) SELECT job
--2) FROM emp
--3) WHERE
--4) GROUP BY JOB
--5) HAVING count(*) = 2
--6) ORDER BY


SELECT deptno
from emp
GROUP BY deptno
HAVING count(*) > 3


SELECT deptno, count(*)
from emp
GROUP BY deptno


SELECT deptno, count(*)
from emp
GROUP BY deptno
HAVING count(*) > 3
 
 
 SELECT *
from emp, dept
WHERE emp.deptno = dept.deptno


SELECT *
from emp INNER JOIN dept
ON emp.deptno = dept.deptno


SELECT *
from emp RIGHT JOIN dept
ON emp.deptno = dept.deptno


SELECT *
from emp LEFT JOIN dept
ON emp.deptno = dept.deptno


SELECT *
from dept LEFT JOIN emp
ON emp.deptno = dept.deptno


SELECT *
from dept RIGHT JOIN emp
ON emp.deptno = dept.deptno


SELECT *
from emp RIGHT OUTER JOIN dept
ON emp.deptno = dept.deptno


SELECT *
from emp LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno


SELECT *
from emp, dept
WHERE emp.deptno(+) = dept.deptno --RIGHT OUTER JOIN


SELECT *
from emp, dept
WHERE emp.deptno = dept.deptno(+) --LEFT OUTER JOIN


SELECT *
from emp FULL OUTER JOIN dept
ON emp.deptno = dept.deptno


SELECT *
from (select * from emp) emp FULL OUTER JOIN dept
ON emp.deptno = dept.deptno


SELECT *
from (select * from emp) e FULL OUTER JOIN dept
ON e.deptno = dept.deptno


SELECT *
from (select * from emp) e FULL OUTER JOIN (select * from dept) d
ON e.deptno = d.deptno


SELECT *
from (select * from emp) e, (select * from dept) d
WHERE e.deptno = d.deptno


SELECT *
from (select * from emp where job = 'SALESMAN') e FULL OUTER JOIN (select * from dept) d
ON e.deptno = d.deptno


CREATE TABLE employees AS
SELECT empno, ename, job, hiredate, sal, comm
FROM emp;


SELECT * from employees


DESCRIBE employees


DESCRIBE emp


ALTER TABLE employees
    ADD store_id number not null; -- gives error


ALTER TABLE employees
    ADD store_id number; -- works fine now


SELECT * from employees


UPDATE employees
SET store_id = 3
WHERE ename in ('KING', 'BLAKE', 'CLARK')


UPDATE employees
SET store_id = 2
WHERE job = 'SALESMAN'


UPDATE employees
SET store_id = 4
WHERE job = 'CLERK'



UPDATE employees
SET store_id = 4
WHERE job = 'ANALYST'


UPDATE employees
SET store_id = 3
WHERE ename = 'JONES'

-- Solution to Assignment
ALTER TABLE employees
    MODIFY store_id number not null;
