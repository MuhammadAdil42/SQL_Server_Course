
SELECT * FROM employeeInfoBackup;
SELECT * FROM employeeLogs;

CREATE TABLE employeeLogs (empId int, name varchar(255), salary decimal, job varchar(255), phone varchar(20), deptId int); -- Create a table to save information of all the changes on employeeTable like insert, update and delete --
GO
ALTER TABLE employeeLogs ADD modifiedby varchar (255), modifiedOn Date; -- Added two new columns in employeeLogs table --
GO

CREATE Trigger tr_emp_after_insert  -- Create a trigger for after insert into employeeinfobackup table --
ON employeeInfoBackup
AFTER INSERT
AS
	BEGIN
		INSERT INTO employeeLogs  --Entering information into employeelogs table --
		SELECT empId, empName, empSalary, job, phone, deptId, 'Adil', GETDATE()
		FROM inserted;
	END

INSERT INTO employeeInfoBackup VALUES (8, 'Mike', 60000, 'QA Engineer', '03110987654', 30);
GO

CREATE TRIGGER tr_emp_after_update  -- Create a trigger for after update into employeeinfobackup table--
ON employeeInfoBackup
AFTER UPDATE
AS
	BEGIN
		INSERT INTO employeeLogs
		SELECT empId, empName, empSalary, job, phone, deptId, 'Adil', GETDATE()  
		FROM inserted              -- Update information can be taken from inserted or deleted magic table as well. --
	END

UPDATE employeeInfoBackup SET empSalary = 100000 WHERE empName = 'ADIL';
GO

CREATE TRIGGER tr_emp_after_delete  -- Create a trigger for after delete into employeeinfobackup table--
ON employeeInfoBackup
AFTER DELETE
AS
	BEGIN
		INSERT INTO employeeLogs
		SELECT empId, empName, empSalary, job, phone, deptId, 'Adil', GETDATE()  
		FROM deleted              -- Delete information will be taken from deleted magic table --
	END

DELETE FROM employeeInfoBackup WHERE empId = 4;