SELECT * FROM employeeInfoBackup;

SELECT * FROM Department;

SELECT empId, empName, empSalary, dept_name, dept_location -- Performing Right Outer Join --
FROM employeeInfoBackup RIGHT OUTER JOIN Department
ON employeeInfoBackup.deptId = Department.deptid;  --ON is clause to perform Join condition --

SELECT e.empId, e.empName, e.empSalary, d.dept_name, d.dept_location -- Performing Right Outer Join using Aliases--
FROM employeeInfoBackup e RIGHT OUTER JOIN Department d
ON e.deptId = d.deptid;  --ON is clause to perform Join condition --