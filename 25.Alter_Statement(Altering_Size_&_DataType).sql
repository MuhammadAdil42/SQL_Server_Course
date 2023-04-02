CREATE TABLE CUSTOMER(ACC_NO INT, CUST_NAME char(100));

ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME varchar(100); -- Changing the dataType of a column using Alter statement --

ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME varchar(50); -- Changing the size of the column by keeping its dataType same --

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER Values (234567, 'Muhammad Adil');

ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME varchar(14); -- Size can be set as minimum as the length of the data already present in the Table but not less than that size of already present data --

ALTER TABLE CUSTOMER ALTER COLUMN CUST_NAME CHAR (50);  -- Changing the size and dataType of a column at the same time using ALTER Statement --