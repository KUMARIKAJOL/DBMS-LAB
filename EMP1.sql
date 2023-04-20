CREATE TABLE EMP1 (
  ID INT(2),
  Name VARCHAR(10),
  Basic DECIMAL(6,2),
  Designation VARCHAR(10),
  Age INT(2)
);

ALTER TABLE EMP1
MODIFY Basic INT(6);

ALTER TABLE EMP1
MODIFY Name VARCHAR(15);

CREATE TABLE EMP_trainee LIKE EMP1;

INSERT INTO EMP1 (ID, Name, Basic, Designation, Age) 
VALUES (1, 'Rohit', 6700, 'Manager', 24), 
       (2, 'Sunil', 6200, 'Engineer', 27), 
       (3, 'Payal', 6300, 'Engineer', 25), 
       (4, 'Kunal', 6700, 'Trainee', 28), 
       (5, 'Sunita', 6230, 'Trainee', 26), 
       (6, 'Bimal', 7000, 'Trainee', 25);

INSERT INTO EMP_trainee SELECT * FROM EMP1 WHERE Designation = 'Trainee';

DESC EMP1;
DESC EMP_trainee;

ALTER TABLE EMP1
ADD Skills VARCHAR(10),
ADD DOJ DATE;

UPDATE EMP1 SET Skills = 'Java', DOJ = '2022-01-01' WHERE ID = 1;
UPDATE EMP1 SET Skills = 'Python', DOJ = '2022-03-15' WHERE ID = 2;
UPDATE EMP1 SET Skills = 'JavaScript', DOJ = '2022-05-20' WHERE ID = 3;
UPDATE EMP1 SET Skills = 'C#', DOJ = '2022-02-10' WHERE ID = 4;
UPDATE EMP1 SET Skills = 'PHP', DOJ = '2022-04-01' WHERE ID = 5;
UPDATE EMP1 SET Skills = 'Ruby', DOJ = '2022-06-30' WHERE ID = 6;

ALTER TABLE emp_trainee 
MODIFY Designation varchar(20);

UPDATE EMP_trainee SET Designation = 'Programmer_Trainee';

UPDATE EMP1 SET Basic = 6950 WHERE Basic = 6700;

ALTER TABLE EMP1
MODIFY ID varchar(5);

SELECT * FROM EMP1;
SELECT * FROM EMP_trainee;

ALTER TABLE EMP1 RENAME COLUMN Age TO Age_in_Years;

DELETE FROM EMP1 WHERE Designation = 'trainee';

ALTER TABLE EMP_trainee DROP COLUMN Age;

ALTER TABLE EMP_trainee 
DROP COLUMN Basic,
DROP COLUMN Designation;

ALTER TABLE EMP1 RENAME TO EMP_Mgr_Engr;

DROP TABLE emp_trainee;

TRUNCATE TABLE EMP_Mgr_Engr;