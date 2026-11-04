Create DATABASE PayrollDb;

use Payrooldb;

Create TABLE employee(
    Emp_ID int primary key,
    Emp_Name varchar(50) not null,
    Department varchar(20) not null,
    Designation varchar(30) not null,
    Salary decimal(10,2) not null,
    City varchar (30),
    Join_Date date not null
);

INSERT INTO Employee (Emp_ID, Emp_Name, Department, Designation, Salary, City, Join_Date)
VALUES
(201, 'Asha', 'HR', 'Executive', 38000, 'Chennai', '2023-06-12'),
(202, 'Bharat', 'IT', 'Developer', 52000, 'Hyderabad', '2022-08-01'),
(203, 'Charan', 'Sales', 'Associate', 32000, 'Vijayawada', '2024-01-15'),
(204, 'Deepa', 'IT', 'Analyst', 48000, 'Bengaluru', '2023-03-20'),
(205, 'Eshan', 'Finance', 'Accountant', 45000, 'Chennai', '2021-11-05'),
(206, 'Farah', 'HR', 'Recruiter', 41000, 'Hyderabad', '2024-02-10'),
(207, 'Gopal', 'Sales', 'Executive', 35000, 'Nellore', '2022-07-18'),
(208, 'Hema', 'IT', 'Developer', 56000, 'Tirupati', '2021-09-30');

--select * from employee ; also gives the same value here
select * from employee order by Emp_ID;

--inserting new employee into the table
INSERT INTO Employee VALUES (209,'Ishita','Marketing','Coordinator',39000,'Guntur',
'2025-01-06');

--updating the employe salary
UPDATE employee set Salary=55000 where Emp_id=202;

--dislpaying the updated values
select Emp_id ,Empi_Name, Salary from employee where Emp_id=202;

--increasing the salary by 10 %
update employee set Salary=round(Salary*1.10,2) where Department='Sales';

--showing the updated values to the of the stirng
select Emp_ID,Emp_Name,Salary from employee where Department='Sales';

--modifying the employee department using set and update
update employee set Department='Operations' where Emp_id =206;

--showing the modified employee details
select Emp_ID,Emp_Name,Department from employee where Emp_id =206;

--adding a new column via alter 
alter table employee add column email varchar(30) null;

--showing the added column
show columns from employee like 'email';

--adding the values into newly added column
update employee set email='asha@company.in' where  Emp_id=201;
update employee set email='bharat@company.in' where  Emp_id=202;

--showing the added employee 
select Emp_ID,Empi_Name,email from employee where Email is not null order by Emp_id;

--modifying the a column data type 
alter table employeee modify column Designiation varchar(50) not null;

--showing the updated values of datatype
show columns from employee like 'Designation'; 

--conidtion record
select Emp_ID,Emp_Name,Department,Salary from employee where Salary>=45000 order by Salary Desc, Emp_id;

--deleting a selected employee
delete from employee where Emp_id =209;

--showing the total count of the no of employees
select count(*) as total_employees from employee ;

--deletion by a condition
delete  from employee where Department ="Operations" and Emp_id=206;

--showing the employee toatal details to see if the deledted one is really deleted or not
SELECT Empi_id, Emp_Name,Department from employee order by Emp_id;

--showing the final table 
select emp_id,emp_Name,Department,Salary,email from employee order by emp_id;