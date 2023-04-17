
CREATE OR ALTER TRIGGER tr_ONTableCreate  -- This statement will check if the trigger doesn't exist in the DB then it'll create else it will alter automatically
ON DATABASE                        -- Trigger created on database
FOR CREATE_TABLE, DROP_TABLE        -- Can be created for multiple events with coma seperator like in this example CREATE and DROP
AS
	BEGIN
		PRINT 'A Table has been created or dropped successfully!';
	END

CREATE TABLE SampleTable(id int, name varchar(20));

DROP TABLE SampleTable;