CREATE TABLE empoyees(
   emp_id int, 
   emp_name varchar(50), 
   department varchar(50), 
   salary int
)

SELECT * FROM empoyees;

INSERT INTO empoyees(emp_id, emp_name, department, salary)
VALUES
(1,'Aarav','IT',65000),
(2,'Vivaan','HR',52000),
(3,'Aditya','Finance',78000),
(4,'Vihaan','Marketing',61000),
(5,'Arjun','Sales',59000),
(6,'Krishna','IT',85000),
(7,'Sai','Support',43000),
(8,'Rohan','Operations',72000),
(9,'Rahul','HR',54000),
(10,'Aman','Finance',69000),
(11,'Neha','Marketing',56000),
(12,'Priya','Sales',75000),
(13,'Sneha','IT',82000),
(14,'Pooja','Admin',47000),
(15,'Anjali','Research',93000),
(16,'Kiran','Support',48000),
(17,'Riya','Operations',71000),
(18,'Simran','HR',51000),
(19,'Kavya','Finance',88000),
(20,'Meera','Marketing',62000),
(21,'Vishal','IT',91000),
(22,'Akash','Sales',66000),
(23,'Saurabh','Security',53000),
(24,'Nikhil','Research',97000),
(25,'Yash','Finance',79000),
(26,'Ritesh','Support',46000),
(27,'Deepak','Operations',74000),
(28,'Mohit','Admin',49000),
(29,'Ajay','Marketing',63000),
(30,'Varun','IT',87000),
(31,'Aarav','Finance',68000),
(32,'Vivaan','Sales',57000),
(33,'Aditya','Research',95000),
(34,'Vihaan','Support',45000),
(35,'Arjun','Operations',76000),
(36,'Krishna','IT',84000),
(37,'Sai','HR',50000),
(38,'Rohan','Marketing',61000),
(39,'Rahul','Finance',80000),
(40,'Aman','Security',55000),
(41,'Neha','Sales',70000),
(42,'Priya','IT',89000),
(43,'Sneha','Research',98000),
(44,'Pooja','HR',52000),
(45,'Anjali','Operations',73000),
(46,'Kiran','Finance',81000),
(47,'Riya','Support',47000),
(48,'Simran','Marketing',64000),
(49,'Kavya','IT',86000),
(50,'Meera','Admin',51000);

-- ROW_NUMBER..................................................................
SELECT *, ROW_NUMBER()
OVER(ORDER BY SALARY DESC) AS ROW_NUMBER
FROM empoyees;

SELECT *, ROW_NUMBER() 
OVER (PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS ROW_NUMBER_PARTITION 
FROM empoyees;

SELECT * FROM(
SELECT *, ROW_NUMBER() 
OVER (PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS ROW_NUMBER_PARTITION 
FROM empoyees) AS TEMPS 
WHERE ROW_NUMBER_PARTITION IN (1);

-- RANK.......................................................................
SELECT * , RANK() 
OVER
    (PARTITION BY DEPARTMENT
	 ORDER BY SALARY DESC) AS RANK_NUMBER 
FROM empoyees;

-- DENSE_RANK................................................................
SELECT * , DENSE_RANK()
OVER
    (PARTITION BY DEPARTMENT
	 ORDER BY SALARY DESC) AS RANK_NUMBER 
FROM empoyees;

-- LAG ...........................................................................

SELECT *, LAG(SALARY) 
   OVER(ORDER BY SALARY DESC) AS LAST_EMP_SALARY 
   FROM EMPOYEES;

-- LEAD ...........................................................................
SELECT *, LEAD(SALARY) 
   OVER(ORDER BY SALARY DESC) AS LAST_EMP_SALARY 
   FROM EMPOYEES;