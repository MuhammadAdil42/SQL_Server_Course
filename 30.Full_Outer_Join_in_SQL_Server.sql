SELECT * FROM employeeInfoBackup;

SELECT * FROM Department;

SELECT e.empId, e.empName, e.empSalary, d.dept_name, d.dept_location -- Performing Full Outer Join using Table Aliases--
FROM employeeInfoBackup e FULL OUTER JOIN Department d    -- Left hand side Table rows will comes first and then right hand side table rows --
ON e.deptId = d.deptid;

SELECT e.empId, e.empName, e.empSalary, d.dept_name, d.dept_location -- Performing Full Outer Join using Table Aliases--
FROM Department d  FULL OUTER JOIN employeeInfoBackup e    -- Left hand side Table rows will comes first and then right hand side table rows --
ON e.deptId = d.deptid;

