SELECT * FROM employeeInfoBackup;

CREATE CLUSTERED INDEX idx_emp_name  -- Creating a clustered index on table employeeInfoBackup and column empName in ascending order --
ON employeeInfoBackup (empName ASC);

CREATE CLUSTERED INDEX idx_composite_index     -- Creating a clustered index on table employeeInfoBackup for more than one column
ON employeeInfoBackup (empId DESC, job ASC);    -- sorting empId in descending order and job in ascending order.