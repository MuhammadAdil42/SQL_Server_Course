USE employeeDB;
GO

CREATE PROCEDURE proc_allemployeedetail   -- Create a simple stored procedure without parameters
AS
BEGIN   -- All the queries of this procedure will be in this BEGIN...END block
	SELECT * FROM employeeInfoBackup;
END
GO

EXECUTE proc_allemployeedetail;  -- Executing a stored procedure which is already created