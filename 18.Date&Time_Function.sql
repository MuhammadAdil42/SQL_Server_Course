SELECT GETDATE();  /* Function to get the current Datetime of the system */

SELECT SYSDATETIME();  /* Function to get the current Datetime of the system */

SELECT CURRENT_TIMESTAMP;   /* Property to get the current Datetime of the system */

SELECT DATENAME(MONTH, CURRENT_TIMESTAMP) AS 'Current Month'; /* Get the specific value from a date => Current Month */

SELECT DATENAME(YEAR, CURRENT_TIMESTAMP) AS 'Current Year'; /* Get the specific value from a date => Current Year */

SELECT DATENAME(DAY, 'January 29 2023') AS 'Day in Date'; /* Get the specific value from a date => Current Day */

SELECT DATEDIFF(YEAR, '1995', CURRENT_TIMESTAMP) AS 'AgeInYears'; /* To calculate the date difference between given dates*/

SELECT DATEDIFF(YEAR, '1995', '2019') AS 'AgeInYears'; /* To calculate the date difference between given dates*/

SELECT DATEDIFF(MONTH, '1995', '2020') AS 'AgeInMonths'; /* To calculate the date difference between given dates*/

SELECT DATEADD(YEAR, 5, CURRENT_TIMESTAMP) AS '5YearsFromNow'; /*Add number of years in given date */

SELECT DATEADD(MONTH, 20, CURRENT_TIMESTAMP) AS '20MonthsFromNow'; /*Add number of months in given date */