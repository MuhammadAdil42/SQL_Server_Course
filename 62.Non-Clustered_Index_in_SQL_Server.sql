

CREATE NONCLUSTERED INDEX idx_employee_name   -- Creating Non-clustered index on employeeInfoBackup table and
ON employeeInfoBackup (empName ASC);           -- sorting empName column in ascending order


SELECT * FROM employeeInfoBackup;  -- will not change the physical order of the data displayed because it is a non-clustered index

SELECT * FROM employeeInfoBackup WHERE empName = 'Adil'; -- will increase the performance of the query 

