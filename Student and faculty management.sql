create database XYZ;
use XYZ;
Create table Department1(
            dept_id int primary key,
            dept_name varchar(50)
            );
create table Student4(
		    Student_id int primary key,
            Student_name varchar(50),
            DOB date,
            Gender varchar(30),
            Dept_id varchar(50),
            Admission_Date date, 
            Marks int,
            phone  varchar(50)
            );
create table faculty(
            faculty_id int primary key,
            faculty_name varchar(50), 
            dept_id int);
create table course1(
			Course_id int primary key, 
            Course_name varchar(50), 
            faculty_id varchar(50));
            
		    
INSERT INTO Department1(dept_id,dept_name)VALUES    
(101,'CSE'),
(102,'IT'),
(103,'MECH'),
(104,'ECE'),
(105,'EEE');
  
INSERT INTO Student4(student_id,student_name,DOB,Gender,Dept_id,Admission_date,Marks,phone)VALUES
(101, 'Aarav Sharma', '2004-05-12', 'M', 101, '2022-08-20', 88.5,9500819545),
(002, 'Diya Patel', '2005-02-18', 'F', 102, '2022-08-21',  92.0,6379791963),
(103, 'Rohan Kumar', '2003-11-05', 'M', 103, '2021-09-02',  76.5,9003480017),
(004, 'Ananya Iyer', '2004-09-14', 'F', 104, '2022-08-22',  94.5,9980674589),
(105, 'Arjun Reddy', '2003-07-22', 'M', 105, '2021-09-05',  81.0,9025864747),
(006, 'Meera Nair', '2005-01-30', 'F', 101, '2022-08-20',  89.2,86675519290),
(007, 'Vijay Singh', '2004-12-05', 'M', 104, '2022-08-25',  65.5,9767854356),
(008, 'Kriti Das', '2003-04-11', 'F', 103, '2021-09-02',  78.0,90786543278),
(009, 'Rahul Verma', '2004-06-18', 'M', 105, '2022-08-24', 85.0,908706535),
(010, 'Siddharth Rao', '2005-03-25', 'M', 101, '2022-08-20', 91.5,9080764534);

INSERT INTO faculty(Faculty_id,Faculty_name,dept_id)VALUES
(4001, 'Dr. Rosalind Franklin', 104),
(4002, 'Prof. Charles Darwin', 104),
(4003, 'Dr. Gregor Mendel', 104),
(5001, 'Prof. Linus Pauling', 105),
(5002, 'Dr. Dorothy Hodgkin', 105);

INSERT INTO course1(Course_id,Course_name,faculty_id)VALUES
(201, 'Database Management Systems', 4001),
(202, 'Python Programming', 4002),
(203, 'Data Structures', 5000),
(204, 'Operating Systems', 4000),
(205, 'Computer Networks', 5500),
(206, 'Machine Learning', 4300),
(207, 'Web Development', 4200);

            
SELECT * FROM Student4;
SELECT UPPER(student_name) AS student_name FROM Student3;
SELECT CONCAT(UPPER(LEFT(student_name,1)),LOWER(SUBSTRING(student_name,2))) AS ProperName FROM Student3;
SELECT student_name, LENGTH(student_name) AS NameLength FROM Student3;
SELECT * FROM Student3 WHERE student_name LIKE 'S%';
SELECT s.student_name,d.dept_name FROM Student3 s JOIN DEPARTMENT d ON s.dept_id=d.dept_id;
SELECT d.dept_name,COUNT(s.student_id)AS Total_students FROM Department1 d left JOIN student s ON d.dept_id=s.dept_id GROUP BY d.dept_name;
SELECT d.dept_name,COUNT(s.student_id) AS total_students FROM department1 d JOIN student3 s ON d.dept_id=s.dept_id GROUP BY d.dept_name HAVING COUNT(s.student_id)>50;
SELECT f.faculty_name,d.Dept_Name FROM Faculty f JOIN Department1 d ON f.Dept_id = d.Dept_id;
SELECT c.Course_name,f.faculty_name FROM Course1 c JOIN Faculty f ON c.Faculty_id= f.faculty_id;
SELECT Student_name,TIMESTAMPDIFF(YEAR, DOB, CURDATE()) AS Age FROM Student3;
SELECT *FROM Student3 WHERE YEAR(Admission_Date) = YEAR(CURDATE());
SELECT * FROM Student3 ORDER BY DOB ASC LIMIT 1;
SELECT * FROM Student3 ORDER BY DOB DESC LIMIT 1;
SELECT d.Dept_name,AVG(TIMESTAMPDIFF(YEAR, s.DOB, CURDATE())) AS AverageAge FROM Student3 s JOIN Department1 d ON s.Dept_id = d.Dept_id GROUP BY d.Dept_name;
SELECT d.Dept_name,COUNT(s.Student_id) AS StudentCount FROM Department1 d LEFT JOIN Student3 s ON d.Dept_id = s.Dept_id GROUP BY d.Dept_name;
SELECT * FROM Student4 WHERE Phone IS NULL;
SELECT Student_name,Marks,CASE
           WHEN Marks >= 90 THEN 'A+'
           WHEN Marks >= 80 THEN 'A'
           WHEN Marks >= 70 THEN 'B'
           WHEN Marks >= 60 THEN 'C'
           WHEN Marks >= 50 THEN 'D'
           ELSE 'F'
       END AS Grade
FROM Student4;
SELECT f.Faculty_name,COUNT(c.Course_id) AS TotalCourses FROM Faculty f JOIN Course1 c ON f.Faculty_id = c.Faculty_id GROUP BY f.Faculty_id, f.Faculty_name HAVING COUNT(c.Course_id) > 1;
SELECT d.Dept_name,
       COUNT(s.Student_id) AS TotalStudents,
       AVG(s.Marks) AS AverageMarks,
       MAX(s.Marks) AS HighestMarks,
       MIN(s.Marks) AS LowestMarks
FROM Department1 d LEFT JOIN Student4 s ON d.Dept_id = s.Dept_id GROUP BY d.Dept_name;



