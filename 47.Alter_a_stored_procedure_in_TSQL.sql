
ALTER PROCEDURE proc_allemployeedetail  -- Alter a simple stored procedure with Alter command
AS
BEGIN
	SELECT e.empName, e.empSalary, d.dept_location
	FROM employeeInfoBackup e INNER JOIN Department d
	ON e.deptId = d.deptid;
END
GO

EXECUTE proc_allemployeedetail;
GO

ALTER PROCEDURE procEmployeeDetailLocationWise(@location VARCHAR (100))  -- Altering a parameterized stored procedure
AS
BEGIN
	SELECT e.empName, e.empSalary, d.dept_location, d.dept_name
	FROM employeeInfoBackup e INNER JOIN Department d
	ON e.deptId = d.deptid
	WHERE d.dept_location = @location;
END
GO

EXEC procEmployeeDetailLocationWise @location = 'Karachi'; -- Executing a parameterized stored procedure
GO