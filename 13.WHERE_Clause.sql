SELECT * FROM employeeInfo;

SELECT * FROM employeeInfo WHERE deptId=10;    /* Select record where deptId is equal to 10*/

SELECT empName, empSalary FROM employeeInfo Where deptId=10;  /* Select particular columns of a table where specific condition meets */

UPDATE employeeInfo SET empSalary = empSalary + 5000 WHERE deptId=20; /* USE of Where condition with Update Command */

DELETE FROM employeeInfo WHERE job='Designer'; /* Deleting a particular record from DB using Where Condition */