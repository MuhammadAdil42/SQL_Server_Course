SELECT * FROM employeeInfoBackup;

BEGIN
	WHILE (SELECT MIN(empSalary) FROM employeeInfoBackup) < 60000 -- Enter if minimum salary is less than 60000 --
	BEGIN
		UPDATE employeeInfoBackup SET empSalary = empSalary + 10000;
		PRINT 'Salaries of all the employees have been updated!';
		
		SELECT * FROM employeeInfoBackup;

		if (SELECT MIN(empSalary) FROM employeeInfoBackup) >= 60000
			BEGIN
				PRINT 'Min. Salary is greater or equal to 60000';
				BREAK;      -- To take the cursor out of While loop --
			END
	END
END
GO
