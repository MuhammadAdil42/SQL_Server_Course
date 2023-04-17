CREATE OR ALTER TRIGGER tr_TableRename              -- Creating or Altering Trigger (always a best practice to use Create and Alter together)
ON DATABASE
FOR RENAME                     -- This trigger is performed on stored procedure Rename or sp_rename
AS
	BEGIN
		PRINT 'Table has been renamed successfully!';
	END

sp_rename 'SampleTable', 'TriggerDemo';  -- Renaming an existing table to check trigger functionality

-- functionality of EVENTDATA() Function

CREATE TABLE dll_Logs(          -- Creating a table to save trigger Logs
id INT IDENTITY PRIMARY KEY,
event_data XML,               -- XML is a dataType in SQL 
performed_by SYSNAME,         -- SYSNAME is a dataType in SQL 
event_type VARCHAR (200)
);
GO

CREATE OR ALTER TRIGGER tr_ddlEventTrigger  -- Creating or Alter DDL Trigger
ON DATABASE
FOR CREATE_TABLE, RENAME, DROP_TABLE        -- For create, Alter and drop statements
AS
	BEGIN
		INSERT INTO dll_Logs (event_data, performed_by, event_type) 
		VALUES (EVENTDATA(), USER, EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]' , 'VARCHAR(MAX)'));  -- inserting data into Logs and also capturing EventData specific Tag information
	END

sp_rename 'TriggerCaptureEvent', 'capturingIndividualXMLElementValue';  -- Renaming an existing table to see trigger functionality

CREATE TABLE demo (id int, name VARCHAR(200));

DROP Table demo;

SELECT * FROM dll_Logs;  -- DDL Logs information

