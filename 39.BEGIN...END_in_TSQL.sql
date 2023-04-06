SELECT * FROM employeeInfoBackup;
GO

BEGIN    -- BEGIN...END block which represents a set of statements
	DECLARE @name VARCHAR(50), @salary int, @DeptId VARCHAR(10) = '30';
	SELECT @name = empName, @salary = empSalary FROM employeeInfoBackup WHERE deptId = @DeptId;
	SELECT @name as 'Name', @salary as 'Salary';

	BEGIN    -- BEGIN statement can be nested.
		PRINT 'Department ID: ' + @DeptId;
	END
END
GO