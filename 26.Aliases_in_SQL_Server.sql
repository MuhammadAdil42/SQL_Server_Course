SELECT * FROM employeeInfo;

SELECT empSalary AS 'Emplyee Salary' FROM employeeInfo; -- Using Alias to give the column a temporary name to increase its understanding --

SELECT empName AS Name FROM employeeInfo; -- Alias can be used without single commas if it is a single word --

SELECT empId AS 'Employee ID', empName AS Name, empSalary AS 'Employee Salary' FROM employeeInfo; -- Multiple Aliases can be used with commas in between --