USE Sample_DB;

SELECT * INTO ProductsCopy  FROM Bulky.dbo.Products; -- Copying the data from another dataBase and creating the table at run time if it is not created in the Db before --

SELECT * FROM ProductsCopy;