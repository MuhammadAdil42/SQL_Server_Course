SELECT * FROM employeeInfoBackup;
SELECT * FROM Department;

-- Display name and salary of the Employees Whose Salary is greater than Faizan's Salary --

SELECT empName, empSalary FROM employeeInfoBackup
WHERE empSalary >
(SELECT empSalary FROM employeeInfoBackup WHERE empName = 'Faizan');

-- Display name and salary of the employees whose salary is greater than Jawad Salary and deptId is same as Jawad --

SELECT empName, empSalary FROM employeeInfoBackup
WHERE empSalary > (SELECT empSalary FROM employeeInfoBackup WHERE empName='JAWAD') -- Subquery will always be in Parenthesis --
AND deptId = (SELECT deptId FROM employeeInfoBackup WHERE empName='JAWAD');

--Display the Employee Information whose department is located at Lahore -- 
SELECT * FROM employeeInfoBackup
WHERE deptId =
(SELECT deptId FROM Department WHERE dept_location='Lahore');	