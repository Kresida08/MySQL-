CREATE DATABASE STUDENT;
USE STUDENT

CREATE TABLE STUD(
ROLL_NO INT PRIMARY KEY,
STUD_NAME VARCHAR (50),
STUD_MARKS INT,
STUD_DEPT VARCHAR (20))

INSERT INTO STUD
VALUES
(1,"NATASHA",75,"BIOLOGY"),
(2,"MANGO",86,"PHYSICS"),
(3,"OLIVIA",65,"COMMERCE"),
(4,"PAUL",80,"BIOLOGY"),
(5,"RIYA",50,"COMMERCE"),
(6,"SAM",78,"PHYSICS"),
(7,"TANYA",67,"COMMERCE"),
(8,"UNAMA",50,"ARTS")

#Will count element in the Stud table.
SELECT COUNT(*) FROM STUD
#Will count elemnt in the Stud table and will give the column the specified name.
SELECT COUNT(*) AS TOTAL_STUD FROM STUD
#Will give u the sum of marks and the name of table as u mentioned.
SELECT SUM(STUD_MARKS) AS TOTAL_MARKS FROM STUD
#Will select the minimum marks from the table and give the mentioned name.
SELECT MIN(STUD_MARKS) AS MIN_MRKS FROM STUD
#Will return all the rows and column where the condition gets satiesfied.
SELECT * FROM STUD
WHERE STUD_MARKS = (SELECT MIN(STUD_MARKS) AS MIN_MARKS FROM STUD)

#Will give the count of student in each department.
SELECT STUD_DEPT, COUNT(*) FROM STUD
GROUP BY STUD_DEPT

#Will give sum of marks as per the department.
SELECT STUD_DEPT,
SUM(STUD_MARKS) AS DEPT_MRKS FROM STUD 
GROUP BY STUD_DEPT

#GROU BY comes before HAVING.
SELECT STUD_DEPT, SUM(STUD_MARKS) AS 
DEPT FROM STUD 
GROUP BY STUD_DEPT
HAVING SUM(STUD_MARKS) > 180



