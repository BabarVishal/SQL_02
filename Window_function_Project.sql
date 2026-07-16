CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    join_date DATE
);

INSERT INTO employees VALUES
(1, 'Rahul', 'IT', 75000, '2020-01-15'),
(2, 'Priya', 'IT', 82000, '2019-03-10'),
(3, 'Amit', 'HR', 55000, '2021-06-20'),
(4, 'Sneha', 'HR', 60000, '2020-08-05'),
(5, 'Vikram', 'Finance', 90000, '2018-11-01'),
(6, 'Ananya', 'Finance', 85000, '2019-07-12'),
(7, 'Raj', 'IT', 70000, '2021-01-25'),
(8, 'Meera', 'HR', 52000, '2022-02-10'),
(9, 'Arjun', 'Finance', 95000, '2017-05-18'),
(10, 'Kavya', 'IT', 78000, '2020-09-30');

SELECT * FROM employees;

-- Q1. Rank employees by salary (highest to lowest)
SELECT *, RANK() 
OVER(ORDER BY SALARY DESC) AS NEW_SALARY 
FROM employees;

-- Q2. Rank employees by salary within each department
SELECT *, RANK() 
OVER(PARTITION BY DEPARTMENT
      ORDER BY SALARY DESC) AS NEW_SALARY 
FROM EMPLOYEES;

-- Q3. Assign row numbers to employees based on join_date (oldest first)
SELECT *, ROW_NUMBER() 
   OVER(ORDER BY JOIN_DATE DESC) AS NEW_ROW 
   FROM EMPLOYEES;


-- Q4. Show each employee's salary and the next highest salary
SELECT *, LEAD(SALARY) 
   OVER(ORDER BY SALARY DESC) AS LAST_EMP_SALARY 
   FROM EMPLOYEES;

-- Q5. Show each employee's salary and the previous highest salary
SELECT *, LAG(SALARY) 
   OVER(ORDER BY SALARY DESC) AS LAST_EMP_SALARY 
   FROM EMPLOYEES;


