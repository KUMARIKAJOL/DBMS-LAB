CREATE TABLE EMPLOYEE (
  EMPLOYEE_ID INT(6),
  LAST_NAME VARCHAR(25),
  JOB_ID VARCHAR(10),
  SALARY NUMERIC(8,2),
  COMM_PCT NUMERIC(4,2),
  MGR_ID INT(6),
  DEPARTMENT_ID INT(4)
);
INSERT INTO EMPLOYEE (EMPLOYEE_ID, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, DEPARTMENT_ID) VALUES
(198, 'Connell', 'SH_CLERK', 2600.00, 2.5, 124, 50),
(199, 'grant', 'SH_CLERK', 2600.00, 2.2, 124, 50),
(200, 'Whalen', 'AD_ASST', 4400.00, 1.3, 101, 10),
(201, 'Hartstein', 'IT_PROG', 6000.00, 100, 1, 20),
(202, 'Fay', 'AC_MGR', 6500.00, NULL, 210, 20),
(203, 'Marvris', 'AD_VP', 7500.00, NULL, 101, 40),
(204, 'Baer', 'AD_PRES', 3500.00, 1.5, 101, 90),
(205, 'Higgins', 'AC_MGR', 2300.00, NULL, 101, 60),
(206, 'Gitz', 'IT_PROG', 5000.00, NULL, 103, 60),
(100, 'King', 'AD_ASST', 8956.00, 0.3, 108, 100),
(101, 'Kochar', 'SH_CLERK', 3400.00, NULL, 118, 30);


INSERT INTO EMPLOYEE (EMPLOYEE_ID, LAST_NAME, JOB_ID, SALARY, COMM_PCT, MGR_ID, DEPARTMENT_ID) VALUES
(6, 'Smith', 'Clerk', 800.00, NULL, 2, 20),
(7, 'Allen', 'Salesman', 1600.00, 0.10, 4, 30),
(8, 'Ward', 'Salesman', 1250.00, 0.10, 4, 30),
(9, 'Clark', 'Manager', 2450.00, NULL, 1, 10),
(10, 'Miller', 'Clerk', 1300.00, NULL, 9, 10);

SELECT EMPLOYEE_ID, LAST_NAME, JOB_ID FROM EMPLOYEE;

SELECT * FROM EMPLOYEE WHERE LAST_NAME = 'King';

SELECT DISTINCT JOB_ID AS JOB_TITLE FROM EMPLOYEE;
SELECT LAST_NAME, SALARY, (SALARY+300) AS 'Increased Salary' FROM EMPLOYEE;

SELECT LAST_NAME, SALARY, (SALARY*12+100) AS 'Annual Compensation' FROM EMPLOYEE;
SELECT * FROM EMPLOYEE WHERE COMM_PCT IS NOT NULL;
SELECT * FROM EMPLOYEE WHERE COMM_PCT IS NULL;
SELECT EMPLOYEE_ID, DEPARTMENT_ID, SALARY FROM EMPLOYEE WHERE SALARY > 5000;

SELECT LAST_NAME, SALARY FROM EMPLOYEE WHERE SALARY BETWEEN 4000 AND 7000;

SELECT * FROM EMPLOYEE WHERE SALARY IN (6000, 6500, 7000);

SELECT * FROM EMPLOYEE WHERE DEPARTMENT_ID IN (10, 20, 30, 50);

SELECT * FROM EMPLOYEE WHERE SALARY <> 5000;
SELECT * FROM EMPLOYEE WHERE JOB_ID = 'CLERK';
UPDATE EMPLOYEE SET JOB_ID = 'Grade_A' WHERE SALARY > 5000;
SELECT * FROM EMPLOYEE;
SELECT *FROM EMPLOYEE WHERE JOB_ID IN ('CLERK', 'PROGRAMMER', 'ASSISTANT');

SELECT *FROM EMPLOYEE WHERE JOB_ID = 'CLERK' AND SALARY < 3000;

SELECT LAST_NAME, MGR_ID FROM EMPLOYEE WHERE SALARY > 3000 AND MGR_ID = 101;