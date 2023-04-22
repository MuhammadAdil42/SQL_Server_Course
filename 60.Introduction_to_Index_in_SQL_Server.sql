-- Select employee information whose salary is greater than 70,000 using Indexes --

CREATE INDEX idx_employee_salary   -- Creating an index on empSalary column to arrange salaries in ascending order --
ON employeeInfoBackup (empSalary ASC);

SELECT * FROM employeeInfoBackup WHERE empSalary > 70000; -- Query performance and execution time will improve --
