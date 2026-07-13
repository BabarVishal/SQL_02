SELECT * FROM Students;

UPDATE Students 
SET package = 6 
WHERE student_id IN(4, 8, 10);

ALTER TABLE students
ADD COLUMN New_package INT;

UPDATE Students
SET new_package = 15 
WHERE Student_id NOT IN (4, 8, 10);

SELECT * FROM Students ORDER BY Student_id ASC; 
                                                               
															  
SELECT *,
     COALESCE(new_package, package) AS new_package_update
	  FROM Students;

SELECT * FROM Students;

ALTER TABLE Students            
DROP COLUMN new_package;

SELECT * FROM Students;



