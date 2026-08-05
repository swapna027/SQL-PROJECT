create database ABC;
use ABC;
create table  DEPARTMENT1(
	dept_id int primary key,
    dept_name varchar(30)
    );
    
create table EMPLOYEE5(
	emp_id int primary key ,
	emp_name varchar(100),
    dept_id int,
	salary int,
	joining_date date,
	commission int,
	city varchar(50)
    );
    
INSERT INTO department1 (dept_id, dept_name)VALUES
(101,'HR'),
(102,'IT'),
(103,'Finance'),
(104,'Sales'),
(105,'Marketing');
    
insert into EMPLOYEE5(emp_id,emp_name,dept_id,salary,joining_date,commission,city) value
(001, 'swapna',101, 55000, '2023-01-15', '5000', 'Chennai'),
(002,'aswath',102, 62000, '2022-11-20', '6000', 'Bangalore'),
(003, 'aathi',103, 48000, '2024-03-10', '5500', 'Mumbai'),
(004, 'deepa',104, 75000, '2021-05-14', NULL, 'Delhi'),
(005, 'devi', 105,58000, '2023-08-19', '6000', 'Hyderabad'),
(006, 'ram',106, 90000, '2020-02-10', '7500', 'Pune'),
(007, 'meow',107, 42000, '2025-01-05', Null, 'Kolkata'),
(008,'janu', 108,50000,'2022-04-22', Null, 'Chennai'),
(009, 'meera',109, 81000, '2019-11-30', '5000', 'Mumbai'),
(010, 'pooja',110, 52000, '2024-06-15', '6500', 'Ahmedabad'),
(011, 'devipriya',111, 60000, '2023-10-01', NULL, 'Bangalore'),
(012, 'swapz',112, 71000, '2022-07-18', '5000', 'Kochi'),
(013, 'deepu',113, 49000, '2025-04-12', '8000', 'Jaipur');

SELECT * FROM EMPLOYEE5;
SELECT ucase(emp_name) as emp_name FROM EMPLOYEE5;
SELECT CONCAT(upper(LEFT(emp_name,1)),LOWER (SUBSTRING(emp_name,2))) as proper_name FROM EMPLOYEE5;
SELECT emp_name,length(emp_name) as name_length FROM EMPLOYEE5;
SELECT emp_name,left(emp_name,3)  FROM EMPLOYEE5;
SELECT * FROM EMPLOYEE5 WHERE upper(emp_name)like '%A%';
SELECT trim(emp_name) as emp_name FROM EMPLOYEE5;
SELECT e.emp_name, d.dept_name FROM EMPLOYEE5 e join department d on e.dept_id = d.dept_id ;
SELECT *FROM EMPLOYEE0 WHERE commission IS NULL;
SELECT emp_name ,salary,salary+5000 as bonus FROM EMPLOYEE5;
SELECT emp_name, salary, 12* salary as annual_salary FROM EMPLOYEE5 ;
SELECT dept_id, max(salary) as highest_salary FROM  EMPLOYEE5 GROUP BY dept_id;
SELECT dept_id, min(salary) as lowest_salary FROM  EMPLOYEE5 GROUP BY dept_id;
SELECT dept_id, avg(salary) as average__salary FROM EMPLOYEE5 GROUP BY  dept_id;
SELECT dept_id, count(*) as total_employee FROM  EMPLOYEE5 GROUP BY dept_id having count(*)>3;
/*Display EMPLOYEE5 who joined during the current year.
Calculate the experience of every EMPLOYEE5 in months.
Display EMPLOYEE5 along with their manager names.*/
SELECT dept_id, avg(salary) as exceeds FROM EMPLOYEE5 GROUP BY dept_id having avg(salary)>60000;


