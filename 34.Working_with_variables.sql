DECLARE @Name VARCHAR(50), @Age INT;  -- Declaring the Variable --
SET @name='Adil';  -- SET can be used to assign one variable at a time --
SELECT @name;  -- SELECT is used to display the value of a variable --

DECLARE @Name VARCHAR(50), @Age INT, @Salary DECIMAL(7,2)= 45000;  -- Declaring the Variable and assign one variable as well --
SELECT @Name = 'Harry', @Age = 25;   -- SELECT statement can be used to assign values to multiple variables in single statement --
SELECT @Name as Name, @Age as Age, @Salary as Salary;  -- Dispalying values in a variable using Aliases --

DECLARE @number INT;
SET @number =100;

SET @number += 50;    -- Incrementing the variable -- 
SELECT @number as Number;

SET @number = @number - 50;  -- Decrementing the variable --
SELECT @number as Number;

SET @number = @number * 50; -- Applying multiplication --
SELECT @number as Number;

SELECT * FROM employeeInfoBackup;

DECLARE @name VARCHAR (50), @Salary DECIMAL (7,2);
SELECT @name = empName, @Salary = empSalary FROM employeeInfoBackup; -- Assigning values to a variable from table of an existing database --
SELECT @name as Name, @Salary as Salary;