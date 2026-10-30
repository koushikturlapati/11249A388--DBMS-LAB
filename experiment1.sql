CREATE DATABASE UniversityDb;

use UniversityDB;

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

Desc Student;


USE UniversityDb;

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

select * from Students order by Student_ID;
