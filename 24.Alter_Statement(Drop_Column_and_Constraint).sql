SELECT * INTO companyInfoBackup FROM dbo.companyInfo; -- Creating a backup of Table before dropping columns --

SELECT * FROM employeeInfo;

ALTER TABLE employeeInfo DROP COLUMN phone; -- Drop one column using Alter statement --

ALTER TABLE employeeInfo DROP COLUMN job, deptId;  -- Drop multiple columns using Alter statement --

SELECT * FROM empDetails;

ALTER TABLE empDetails DROP CONSTRAINT pID_Unique_Key; -- DROP Constraint from a Table --

SELECT * FROM companyInfo;

ALTER TABLE companyInfo DROP CONSTRAINT ProjectKey, -- Drop Constraint and Column/coulmns from a table using Alter statement by coma seperator -- 
COLUMN Revenue,ProjectId,ProjectId2;
