USE employeeDB;

SELECT * FROM employeeInfoBackup;
SELECT * FROM employeeLogs;
GO

CREATE TRIGGER tr_employee_All_DML_Operations  -- Creating a single trigger for all the DML operations 
ON employeeInfoBackup
AFTER INSERT, UPDATE, DELETE
AS
	BEGIN
		--INSERT
		IF EXISTS (SELECT * FROM inserted) AND NOT EXISTS (SELECT * FROM deleted)  -- Value exists in Inserted table and doesn't exist in deleted table
			INSERT INTO employeeLogs
			SELECT empId, empName, empSalary, job, phone, deptId, 'Adil', GETDATE()
			FROM inserted; 

		--UPDATE
		ELSE IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)  -- New value exists in Inserted table and old value in deleted table
			INSERT INTO employeeLogs
			SELECT empId, empName, empSalary, job, phone, deptId, 'Adil', GETDATE()
			FROM deleted;

		--Delete
		ELSE IF EXISTS (SELECT * FROM deleted) AND NOT EXISTS (SELECT * FROM inserted)  -- Value exists in deleted table and doesn't exist in inserted table
			INSERT INTO employeeLogs
			SELECT empId, empName, empSalary, job, phone, deptId, 'Adil', GETDATE()
			FROM deleted;
		ELSE
			BEGIN
				PRINT 'Nothing has changed....!';
			END
	END

INSERT INTO employeeInfoBackup VALUES (10, 'Saba', 70000, 'Graphic Designer', 090078602, 50);

UPDATE employeeInfoBackup SET empSalary = 70000 WHERE empId = 9;

DELETE employeeInfoBackup WHERE empId = 6;

DROP TRIGGER tr_emp_after_insert;  -- Deleting an existing Trigger for testing purpose