SELECT deptId, SUM(empSalary) AS 'Total Salary' FROM employeeInfo GROUP BY deptId HAVING deptId=20; /* HAVING clause further filters the result based upon the aggregate function and Group By clause */

SELECT deptId , SUM(empSalary) AS 'Total Salary' FROM employeeInfo GROUP BY deptId HAVING SUM(empSalary) BETWEEN 10000 AND 80000; /* HAVING Statement can have any type of condition and will always come after GROUP By clause*/

SELECT deptId, SUM (empSalary) AS 'Total Salary' FROM employeeInfo WHERE deptId=20 GROUP BY deptId; /* WHERE clause will always comes before GROUP BY clause*/

SELECT * FROM employeeInfo;