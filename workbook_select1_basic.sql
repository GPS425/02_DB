SELECT DEPARTMENT_NAME "학과 명", CATEGORY "계열"
FROM TB_DEPARTMENT;


-------------------------------------------------

SELECT DEPARTMENT_NAME || '의 정원은 ' || CAPACITY || '명 입니다.' AS "학과별 정원"
FROM TB_DEPARTMENT;

---------------------------------------------------------

SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE DEPARTMENT_NO = (SELECT DEPARTMENT_NO
                       FROM TB_DEPARTMENT
                       WHERE DEPARTMENT_NAME = '국어국문학과')
  AND SUBSTR(STUDENT_SSN, 8, 1) = '2'
  AND ABSENCE_YN = 'Y';

----------------------------------------------------------

SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE STUDENT_NO IN ('A513079', 'A513090', 'A513091', 'A513110', 'A513119');

----------------------------------------------------------

SELECT DEPARTMENT_NAME, CATEGORY
FROM TB_DEPARTMENT
WHERE CAPACITY BETWEEN 20 AND 30;

--------------------------------------------------------

SELECT PROFESSOR_NAME
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO IS NULL;

---------------------------------------------------------

SELECT STUDENT_NAME
FROM TB_STUDENT
WHERE DEPARTMENT_NO IS NULL;

---------------------------------------------------------

SELECT CLASS_NO
FROM TB_CLASS
WHERE PREATTENDING_CLASS_NO IS NOT NULL;

---------------------------------------------------------

SELECT DISTINCT CATEGORY
FROM TB_DEPARTMENT

---------------------------------------------------------

SELECT STUDENT_NO, STUDENT_NAME, STUDENT_SSN
FROM TB_STUDENT
WHERE STUDENT_NO LIKE 'A2%'
  AND STUDENT_ADDRESS LIKE'%전주%'
  AND NVL(ABSENCE_YN, 'N') = 'N';

---------------------------------------------------------
-- FUNCTION PART
---------------------------------------------------------

SELECT STUDENT_NO "학번", STUDENT_NAME "이름", ENTRANCE_DATE "입학년도"
FROM TB_STUDENT
WHERE DEPARTMENT_NO = '002'
ORDER BY ENTRANCE_DATE ASC;

-----------------------------------------------------------

SELECT PROFESSOR_NAME, PROFESSOR_SSN
FROM TB_PROFESSOR
WHERE LENGTH(PROFESSOR_NAME)  != 3

----------------------------------------------------------

SELECT PROFESSOR_NAME AS "교수이름",
       TRUNC(MONTHS_BETWEEN(SYSDATE, TO_DATE('19' || SUBSTR(PROFESSOR_SSN, 1, 6), 'YYYYMMDD')) / 12) AS "나이"
FROM TB_PROFESSOR
WHERE SUBSTR(PROFESSOR_SSN, 8, 1) = '1'
ORDER BY "나이" ASC;

-----------------------------------------------------------

SELECT SUBSTR(PROFESSOR_NAME, 2) AS "이름"
FROM TB_PROFESSOR;

-----------------------------------------------------------

SELECT EXTRACT(YEAR FROM ENTRANCE_DATE) - EXTRACT(YEAR FROM TO_DATE('19'||SUBSTR(STUDENT_SSN, 1, 6),'YYYYMMDD')) 연도
FROM TB_STUDENT;


--------------------------------------------------------------

SELECT TO_CHAR(TO_DATE('2020/12/25'), 'DAY') 
FROM DUAL;



















