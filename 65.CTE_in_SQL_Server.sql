SELECT * FROM employeeInfoBackup;
SELECT * FROM Department;

WITH cte_AvgSalary AS  -- Syntax of creating a CTE with "WITH" keyword 
(
	SELECT AVG(empSalary) AS avgSalary FROM employeeInfoBackup
)
SELECT avgSalary FROM cte_AvgSalary; -- A CTE must be called immediately after it is created using DML statement


WITH cte_employeeCount (deptid, employeeCount) AS -- Paremetrized CTE statement --
(
	SELECT deptId, COUNT(*) AS employeeCount
	FROM employeeInfoBackup GROUP BY deptid 
)
SELECT dept_name, EmployeeCount FROM   
Department JOIN cte_employeeCount     -- Both join and inner join have the same meaning
ON Department.deptid = cte_employeeCount.deptid;  --It returns the same number of columns as passed in the parameter