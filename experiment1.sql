-- creating a database
CREATE DATABASE UniversityDb;
-- using that databse
use UniversityDB;
--creating the table
CREATE table Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) not null,
    Department varchar(20) not null,
    Year int not null,
    Age int not null,
    Gender varchar(10),
    Marks decimal (5,2),
    City Varchar(50)
    );

--showing how the table is been constructed
Desc Student;

--using the databse again
USE UniversityDb;

--inserting the values
INSERT INTO Student
(Student_ID, Student_Name, Department, Year, Age, Gender, Marks, City)
VALUES
(101, 'Arun', 'CSE', 2, 19, 'Male', 85, 'Chennai'),
(102, 'Priya', 'ECE', 3, 20, 'Female', 92, 'Hyderabad'),
(103, 'Ravi', 'CSE', 2, 19, 'Male', 67, 'Vijayawada'),
(104, 'Sneha', 'AIML', 1, 18, 'Female', 88, 'Bengaluru'),
(105, 'Kiran', 'EEE', 4, 21, 'Male', 56, 'Chennai'),
(106, 'Divya', 'CSE', 3, 20, 'Female', 94, 'Tirupati'),
(107, 'Rahul', 'MECH', 2, 19, 'Male', 72, 'Nellore'),
(108, 'Anjali', 'AIML', 1, 18, 'Female', 81, 'Hyderabad'),
(109, 'Naveen', 'ECE', 4, 21, 'Male', 63, 'Guntur');

--giving the tables full deatils
select * from Student order by Student_ID;

--selecting the three colums of the whole table
select Student_ID,Student_Name,Department from student;

--filtering the cse students
select Student_ID,Student_Name,Department from student where Department ='CSE' order by Student_ID;

--using the and 
select Student_ID,Student_Name,Department from student where Department='CSE' and marks > 80 order by Student_ID;

--using the or
select Student_ID,Student_Name,Department from student where Department='CSE' or Department='ECE' order by Student_ID;

--finding distinct, gives only differnt departments
select DISTINCT Department from student order by Department;

--sorting using asc
select Student_ID,Student_Name,Marks from Student order by Marks asc;

--sorting using des
select Student_ID,Student_Name,Marks from Student order by Marks desc;

--using the between
SELECT Student_ID,Student_Name,Marks from student where Marks between 70 and 80 order by student_id;

--using like operator
select Student_ID,Student_Name from student Student_Name like 'A%'  order by Student_ID;

--using in operator
select Student_ID,Department from Student where Department in ("CSE","ECE","AIML") order by student_id;

--finding the missing operators
select Student_ID,Student_Name,City from student where City is null;

--finding the top marks
select Student_Name, Department ,Marks from Student order by Marks desc limit 3;

--aggregate operations 
select count(*) as total from student;
select count(DISTINCT Departments) as departments from student;
select max(Marks) as Highestmarks from student;
select min(Marks) as Lowestmarks from student;
