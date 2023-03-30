SELECT empName, LEN(empName) FROM employeeInfo;  /* returns length of a string */

SELECT UPPER('this is used to convert a string in upper case letter'); /* converts a string into a upper case letters */

SELECT empName, LOWER(empName) FROM employeeInfo;  /* converts a string into a lower case letters */

SELECT LTRIM('   Left Trim');   /* Trim spaces from left side in a string */

SELECT RTRIM('Right Trim    ');   /* Trim spaces from right side in a string */

SELECT SUBSTRING('MICROSOFT', 1, 5);  /* Extract a sub-part of a string */

SELECT REPLACE('MICROSOFT', 'SOFT', 'HARD'); /* Replace a sub-part or complete string with given string */

SELECT REPLICATE('DUMMY ', 5);  /* Replicate given string number of times mentioned in the second argument. */