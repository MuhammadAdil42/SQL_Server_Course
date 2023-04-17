
-- Create a function to get information of all the employees based upon salary.

CREATE FUNCTION getAllEmployees (@salary decimal)  -- Creating an inline table-valued function by defining its return type Table
RETURNS TABLE
AS
RETURN SELECT * FROM employeeInfoBackup WHERE empSalary = @salary;
GO

SELECT * FROM dbo.getAllEmployees(90000);  -- Calling a table-valued function using FROM keyword (because its a table)
GO

CREATE FUNCTION getEmployees (@id INT)  -- Creating a table-valued function by defining & declaring a table in its returns parameter
RETURNS @Result TABLE                   
(ID int, Name VARCHAR(50), Salary decimal, Job VARCHAR (50), phone VARCHAR (50), DeptId INT )
AS
BEGIN
	INSERT INTO @Result               -- Result will contain the result of the subsequent SELECT statement 
	SELECT * FROM employeeInfoBackup WHERE deptId = @id;
	RETURN                                                 -- Table valued function return statement will be empty
END
GO

SELECT * FROM dbo.getEmployees(40);      -- Calling a table-valued function using FROM keyword (because its a table)