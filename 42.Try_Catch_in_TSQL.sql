BEGIN TRY 
	SELECT 100/5 AS 'Division';
END TRY

BEGIN CATCH
	SELECT ERROR_MESSAGE() AS 'Error Message';  -- ERROR_MESSAGE() is a built-in function for error handling--
END CATCH

BEGIN TRY 
	SELECT 100/0 AS 'Division';
END TRY

BEGIN CATCH
	SELECT ERROR_MESSAGE() AS 'Error Message', ERROR_LINE() AS 'Error Line', ERROR_NUMBER() AS 'Error Number', ERROR_PROCEDURE() AS 'Procedure';  -- ERROR_MESSAGE(), ERROR_LINE(), ERROR_NUMBER() and ERROR_PROCEDURE() are built-in functions for error handling --
END CATCH

SELECT ERROR_MESSAGE() AS 'Error Message', ERROR_LINE() AS 'Error Line', ERROR_NUMBER() AS 'Error Number', ERROR_PROCEDURE() AS 'Procedure';  -- These functions outside catch block will return NULL values --