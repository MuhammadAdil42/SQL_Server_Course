SELECT * FROM employeeInfoBackup;

SELECT * FROM Department;

SELECT empId, empName, empSalary, dept_name, dept_location FROM  -- Performing Inner join using 2 different tables which have information of one column common --
employeeInfoBackup INNER JOIN Department
ON employeeInfoBackup.deptId = Department.deptid;  -- ON is a Clause which is used to tell the condition of the join --

SELECT e.empId, e.empName, e.empSalary, d.dept_name, d.dept_location FROM -- Performing Inner Join using Aliases in order to shorten the query --
employeeInfoBackup e INNER JOIN Department d
ON e.deptId = d.deptid;
