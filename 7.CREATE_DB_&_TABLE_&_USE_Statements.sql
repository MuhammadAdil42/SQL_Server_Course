CREATE DATABASE employeeDB;

USE employeeDB;

CREATE TABLE employeeInfo
(
empId  INTEGER PRIMARY KEY, 
empName VARCHAR(50) NOT NULL,
empSalary DECIMAL (10,2) NOT NULL,
job VARCHAR (50), 
phone VARCHAR (50),
deptId INTEGER
);