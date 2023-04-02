USE employeeDB;

CREATE TABLE empDetails(id int PRIMARY KEY, name varchar(50));

SELECT * FROM empDetails;

ALTER TABLE empDetails ADD Salary decimal; -- Altering Table and adding a new column in it without using a keyowrd null and without using any constraint--

INSERT INTO empDetails VALUES (1, 'Adil', '25000');

ALTER TABLE empDetails ADD Phone varchar(10) null;  -- Altering Table and adding a new column in it by using a keyowrd null and without using any constraint--

ALTER TABLE empDetails ADD ProjectCompleted int not null Default 5;  -- Altering Table by adding a column and defining a constraint NOT NULL --

ALTER TABLE empDetails ADD ProjectId integer null  -- Altering a Table by adding a column and defining its Constraint by giving it a unique name --
CONSTRAINT pID_Unique_Key UNIQUE;

INSERT Into empDetails VALUES(2, 'Harry', 30000, '0322457875' ,DEFAULT, 4);

CREATE TABLE companyInfo(id int);

ALTER TABLE companyInfo              -- Adding multiple columns in one command using ALTER statement using coma seperator --
ADD Revenue decimal(10,2) null,
ProjectId int CONSTRAINT ProjectKey PRIMARY KEY;

SELECT  *FROM companyInfo;