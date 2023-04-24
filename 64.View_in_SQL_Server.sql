SELECT * FROM employeeInfoBackup;

SELECT * FROM Department;

-- display employee name and salary --
SELECT empName, empSalary FROM employeeInfoBackup;

-- display employee details whose department is electrical --
SELECT e.empName, e.empSalary, d.dept_location, d.dept_name
FROM employeeInfoBackup e INNER JOIN Department d
ON e.deptId = d.deptid WHERE dept_name = 'Electrical';
GO

CREATE VIEW v_employee_details      -- Create view syntax for simple select query
AS SELECT empName, empSalary FROM employeeInfoBackup; -- Doesn't occupy any physical storage --
GO

SELECT * FROM v_employee_details;  -- Calling a View --
GO

CREATE VIEW v_EmployeeDetailsWithDepartment -- Create view syntax for a join query
AS SELECT e.empName, e.empSalary, d.dept_location, d.dept_name
FROM employeeInfoBackup e INNER JOIN Department d
ON e.deptId = d.deptid WHERE dept_name = 'Electrical';
GO

SELECT * FROM v_EmployeeDetailsWithDepartment;  -- Calling a View --
GO

-- Display employee details without salary --
CREATE VIEW v_employeePublicDetails   -- Creating a view implementing column level security --
AS SELECT e.empName, d.dept_location, d.dept_name
FROM employeeInfoBackup e INNER JOIN Department d
ON e.deptId = d.deptid
GO

SELECT * FROM v_employeePublicDetails; -- Calling a View --
GO

-- Display employee details whose department location is Lahore only --

CREATE VIEW v_employeeDetailsLahore    -- Creating a view implementing row level security --
AS SELECT e.empName, e.empSalary, d.dept_location, d.dept_name
FROM employeeInfoBackup e INNER JOIN Department d
ON e.deptId = d.deptid WHERE dept_location = 'Lahore';
GO

SELECT * FROM v_employeeDetailsLahore;  -- Calling a View --

sp_helptext v_employeeDetailsLahore; -- Built-in stored procedure to see query inside a view