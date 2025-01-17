--AGGREGATE FUNCTIONS
SELECT MIN(SALARY),MAX(SALARY),SUM(SALARY),AVG(SALARY),COUNT(*)
FROM EMPLOYEES;

--GROUP BY CLAUSE

--SIMPPLE GROUP BY 
SELECT DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*)>2;


SELECT DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY)>2000;

--GROUP BY SET OF COLUMNS
SELECT FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID,FIRST_NAME,LAST_NAME,SALARY
HAVING SUM(SALARY)>2000;

SELECT FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME)>4 
GROUP BY DEPARTMENT_ID,FIRST_NAME,LAST_NAME,SALARY
HAVING SUM(SALARY)>2000;


SELECT FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME)>4
AND FIRST_NAME LIKE '%a'
GROUP BY DEPARTMENT_ID,FIRST_NAME,LAST_NAME,SALARY
HAVING SUM(SALARY)>2000;


--DISTINCT

SELECT DISTINCT FIRST_NAME,LAST_NAME
FROM EMPLOYEES;

