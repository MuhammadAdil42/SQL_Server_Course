SELECT * FROM employeeInfo;

SELECT deptId FROM employeeInfo GROUP BY deptId; /* Selecting deptId values and group them by dept Id */

SELECT deptId, SUM(empSalary) AS 'TotalSum' FROM employeeInfo GROUP BY deptId; /* Calculating Sum of Salaries based upon the dept Id */

SELECT deptId, MIN(empSalary) AS 'Minimum Salary' FROM employeeInfo GROUP BY deptId; /* Calculating minimum amount of Salary based upon the dept Id */

SELECT deptId, cast(AVG(empSalary) as float) AS 'Average Salary' FROM employeeInfo GROUP BY deptId; /* Calculating Average of Salaries based upon the dept Id */

