CREATE DATABASE WORKERS
USE WORKERS

CREATE TABLE MANAGER(
ID INT PRIMARY KEY,
MAN_NAME VARCHAR (50),
SALARY INT,
DEPT VARCHAR (5))

INSERT INTO MANAGER VALUES
(1,"BANNY",65000,"IT"),
(2,"BUNNY",76800,"ERO"),
(3,"BANCY",45000,"HR"),
(4,"BINNU",64500,"ERO"),
(5,"BUNTY",37000,"IT"),
(6,"BHANU",55000,"IT")

#AND works with 2 condition where IT should be the dept and the salary should be >38000 (both the condition should be fullfilled)
SELECT * FROM MANAGER 
WHERE DEPT = "IT" AND SALARY > 38000

#Select all from table where dept should be ERO or HR (any 1)
SELECT * FROM MANAGER 
WHERE DEPT = "ERO" OR DEPT = "HR"

#Select all from Manager where dept ERO will be skipped the rest will be returned
SELECT * FROM MANAGER
WHERE NOT DEPT = "ERO"

#Select all from table where dept will be HR and ERO only.
SELECT  * FROM MANAGER
WHERE DEPT IN ("HR","ERO")

#Select all from table where salary should be between 30000 and 50000
SELECT * FROM MANAGER 
WHERE SALARY BETWEEN 30000 AND 50000

#LIKE ('_' means Single Character and '%' means single zero or multiple charater)
#Select all from table where name will start with any alpha but should end with NY
SELECT * FROM MANAGER 
WHERE MAN_NAME LIKE '%NY'
#Select all from table where name should start with B and end with Y 
SELECT * FROM MANAGER
WHERE MAN_NAME LIKE 'B%Y'
