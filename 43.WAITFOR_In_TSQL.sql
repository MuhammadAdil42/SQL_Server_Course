SELECT GETDATE() AS 'Current Time';
GO

BEGIN
	WAITFOR TIME '02:30:40';       -- It will wait for the time mentioned in the single qoutes --
	SELECT * FROM employeeInfoBackup;
END
GO

SELECT GETDATE() AS 'Current Time';
GO
BEGIN
	WAITFOR DELAY '00:00:10';       -- It will delay the execution of the block for the time mentioned in the single qoutes like in this example 10 seconds --
	SELECT * FROM employeeInfoBackup;
END
GO