SELECT * FROM employeeInfoBackup;
GO

-- Create a function which takes name as input parameter and returns that person salary!

CREATE FUNCTION Salary (@name VARCHAR (50))  -- Creating a function with at least one input parameter and data type of return value 
RETURNS decimal

BEGIN
	DECLARE @Sal decimal;
	SELECT @Sal = empSalary FROM employeeInfoBackup
	WHERE empName = @name;

	RETURN @Sal;
END
GO

SELECT dbo.Salary('Adil') AS 'Employee Salary';    -- Calling a function with dbo prefix--
GO