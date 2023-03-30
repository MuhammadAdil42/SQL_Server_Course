
UPDATE employeeInfo     /* This Query is used to update all the entries in DB */
SET empSalary = empSalary + 1000;

UPDATE employeeInfo       /* This query is used to update data of a particular entry in DB */
SET job = 'Tester'
WHERE empName = 'Harry';

UPDATE employeeInfo
SET phone = '0322-1234567',   /* SET and Where both are called as Clauses */
deptId = 9
WHERE empName = 'Harry';