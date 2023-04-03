SELECT * FROM Department;

SELECT * FROM employeeInfoBackup;

SELECT empId, empName, empSalary, dept_name, dept_location FROM  -- Performing Left Outer Join --
employeeInfoBackup LEFT OUTER JOIN Department
ON employeeInfoBackup.deptId = Department.deptid;

SELECT e.empId, e.empName, e.empSalary, d.dept_name, d.dept_location FROM  -- Performing Left Outer Join Using Aliases--
employeeInfoBackup e LEFT OUTER JOIN Department d
ON e.deptId = d.deptid;