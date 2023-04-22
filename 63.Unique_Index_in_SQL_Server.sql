SELECT * FROM Department;

ALTER TABLE Department ADD PRIMARY KEY (deptid); -- This is one way of defining a UNIQUE clustered index on a column --

-- Second way of defining a unique non-clustered index by adding a unique constraint on a column
ALTER TABLE Department ADD CONSTRAINT UQ_department_dept_name UNIQUE (dept_name);

-- Third way of defining a unique non-clustered Index independant of constraint --
CREATE UNIQUE NONCLUSTERED INDEX idx_department_deptLocation
ON Department(dept_location);

-- Third way of defining a unique clustered Index--
ALTER TABLE Department ADD CONSTRAINT UQ_department_dept_id UNIQUE CLUSTERED (deptid);