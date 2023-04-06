SELECT * FROM employeeInfoBackup;

BEGIN
	DECLARE @salary DECIMAL(10,2);
	SELECT @salary = AVG(empSalary) FROM employeeInfoBackup;
	SELECT @salary AS 'Avg. Salary';

	IF @salary > 25000  -- USE of IF statement--
		BEGIN         -- This block will be executed if the condition is true otherwise will be skipped.
			PRINT 'Avg. Salary is greater than 25000';
		END
END
GO

BEGIN
	DECLARE @salary DECIMAL(10,2);
	SELECT @salary = AVG(empSalary) FROM employeeInfoBackup;
	SELECT @salary AS 'Avg. Salary';

	IF @salary > 35000  -- USE of IF statement--
		BEGIN         -- This block will be executed if the condition is true otherwise will be skipped.
			PRINT 'Avg. Salary is greater than 35000';
		END
	ELSE  -- if "if" condition is not true then else will be executed and it will also represent set of commands in a BEGIN...END block.
		BEGIN
			PRINT 'AVG. Salary is less than 35000';
		END
END
GO