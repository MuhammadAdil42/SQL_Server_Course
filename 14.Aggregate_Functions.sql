SELECT * FROM employeeInfo;

SELECT SUM(empSalary) FROM employeeInfo; /* USE Sum function to calculate the sum of empSalary Column */

SELECT AVG(empSalary) FROM employeeInfo; /* USE AVG function to calculate the average of empSalary Column */

SELECT MIN(empSalary) FROM employeeInfo; /* USE MIN function to calculate the Minimum Salary in empSalary Column */

SELECT MAX(empSalary) FROM employeeInfo; /* USE MAX function to calculate the Maximum Salary in empSalary Column */

INSERT INTO employeeInfo (empId, empName, empSalary) VALUES	(7, 'Faizan', 35000);

SELECT COUNT(job) FROM employeeInfo; /* USE COUNT function to calculate the total count of values in job Column */
