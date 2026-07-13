CREATE TABLE DIV_A(
     id SERIAL PRIMARY KEY, 
	 name VARCHAR(100) NOT NULL, 
	 roll_num INT, 
	 phone_number BIGINT NOT NULL, 
	 branch VARCHAR(100), 
	 email VARCHAR(100) UNIQUE, 
	 age INT CHECK(AGE >= 22)
)

SELECT * FROM DIV_A;

TRUNCATE TABLE DIV_A RESTART IDENTITY;

INSERT INTO DIV_A(name, roll_num, phone_number, branch, email, age)
values('vishal babar', 7, 8999528919, 'computer', 'vishalbaabr7351@gmail.com', 22),
      ('vishwash babar', 9, 1239528919, 'computer', 'vishbaabr7351@gmail.com', 22),
	  ('aditi babar', 22, 1234428919, 'computer', 'aditibaabr7351@gmail.com', 22);

CREATE TABLE DIV_B(
     id SERIAL PRIMARY KEY, 
	 name VARCHAR(100) NOT NULL, 
	 roll_num INT, 
	 phone_number BIGINT NOT NULL, 
	 branch VARCHAR(100), 
	 email VARCHAR(100) UNIQUE, 
	 age INT CHECK(AGE >= 22)
)

INSERT INTO DIV_B(name, roll_num, phone_number, branch, email, age)
values('OM GAIKWAD', 44, 8999528930, 'computer', 'OM7351@gmail.com', 32),
      ('YASH', 19, 9039528919, 'computer', 'YASH7351@gmail.com', 22),
	  ('SHUBHAM', 82, 1004428919, 'computer', 'SHUBZ7351@gmail.com', 25); 

SELECT * FROM DIV_B;

-- INNER JOIN  => COMMERN DATA FROM BOTH TABLE 
SELECT * FROM 
DIV_A
INNER JOIN 
DIV_B
ON  DIV_B.ID = DIV_A.ID;

-- LEFT JOIN => all data from left table and comman data from right table
SELECT * FROM 
DIV_A
LEFT JOIN
DIV_B
ON  DIV_B.ID = DIV_A.ID;

-- RIGHT JOIN => ALL DATA  FROMM RIGHT TABLE AND COMMON DATA FROM LEFT 
SELECT * FROM 
DIV_A
RIGHT JOIN 
DIV_B
ON  DIV_B.ID = DIV_A.ID;

-- FULL OUTER JOIN => ALL DATA FROM BOTH TABLE 
SELECT * FROM 
DIV_A
FULL OUTER JOIN 
DIV_B
ON  DIV_B.ID = DIV_A.ID;

-- CROSS JOIN => 
SELECT * FROM DIV_A 
CROSS JOIN 
DIV_B;

-- SELF JOIN = JOIN A TABLE ITSELF 




