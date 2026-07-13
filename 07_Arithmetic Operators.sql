SELECT * FROM TENNIS;
SELECT * FROM STUDENT;
SELECT * FROM BOYS_IN_VILLAGE;

-- Arithmetic Operators => +, -, *, /, %

SELECT name, salary, 
(salary * 0.10) as bonus 
FROM STUDENT;

SELECT name, salary, 
(salary * 12) as annual_salary,
(salary * 0.05) as salary_increment,
(salary + salary * 0.05) as new_salary
from STUDENT;
