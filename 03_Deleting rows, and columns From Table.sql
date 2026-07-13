SELECT * FROM STUDENT;

INSERT INTO STUDENT(FULL_NAME, EMAIL, PHONE_NUMBER)
VALUES
('Vishal Babar', 'vishal.babar@gmail.com', '9876543210'),
('Ayush Bhilare', 'ayush.bhilare@gmail.com', '9876543211'),
('Rohan Patil', 'rohan.patil@gmail.com', '9876543212'),
('Sneha Sharma', 'sneha.sharma@gmail.com', '9876543213'),
('Priya Deshmukh', 'priya.deshmukh@gmail.com', '9876543214'),
('Rahul Jadhav', 'rahul.jadhav@gmail.com', '9876543215'),
('Neha Kulkarni', 'neha.kulkarni@gmail.com', '9876543216'),
('Amit Joshi', 'amit.joshi@gmail.com', '9876543217'),
('Pooja Singh', 'pooja.singh@gmail.com', '9876543218'),
('Karan Mehta', 'karan.mehta@gmail.com', '9876543219');

DELETE FROM STUDENT 
WHERE ID = 10;

SELECT * FROM STUDENT;

ALTER TABLE STUDENT 
DROP COLUMN PHONE_NUMBER;


