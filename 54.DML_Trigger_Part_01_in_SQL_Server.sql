SELECT * FROM employeeInfoBackup;
GO

CREATE TRIGGER tr_message   --Create Trigger syntax--
ON employeeInfoBackup		-- Table on which we want to perform Trigger --
AFTER INSERT				-- Trigger will be performed after the Insert statement in particular table --
AS
	BEGIN                       -- Body of the Trigger --
		PRINT 'Welcome to our company!';
	END


INSERT INTO employeeInfoBackup VALUES (1, 'Bilal', 80000, 'Sr. Developer', '03221234567', 10);