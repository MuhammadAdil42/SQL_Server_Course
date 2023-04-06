USE employeeDB;  -- A batch that contains single line of SQL statement --
GO               -- GO command is used to mark the end of a batch and it is used without semi-colon

DECLARE @Name VARCHAR(50); -- This is a batch which contains multiple lines of SQL statements
SET @Name = 'Microsoft';    -- This variable is a local variable which can't be used outside of this batch i.e. after GO Statement
SELECT @Name as Name;
GO
