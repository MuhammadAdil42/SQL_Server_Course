SELECT * FROM employeeInfoBackup;

SELECT * FROM Department;
GO

-- Create a stored procedure to show details of all the employees whose location is of Lahore

CREATE PROCEDURE procEmployeeDetailLocationWise (@location VARCHAR(100))  -- Creating a stored procedure with a parameter
AS
BEGIN
	SELECT * FROM employeeInfoBackup e INNER JOIN Department d 
	ON e.deptId = d.deptid
	WHERE d.dept_location = @location;  -- This value will come from the fucntion calling
END
GO

EXECUTE procEmployeeDetailLocationWise @location = 'Lahore';  -- Executing a stored procedure by giving its variable a value 
GO