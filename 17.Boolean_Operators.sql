
CREATE TABLE tbl_user_login (      /*Creating Table of User login Info*/
	UserId INT PRIMARY KEY IDENTITY,
	UserName VARCHAR(50) NOT NULL UNIQUE,
	Email VARCHAR(100) NOT NULL UNIQUE,
	Password VARCHAR(50) NOT NULL
);

INSERT INTO tbl_user_login (UserName, Email, Password) VALUES  /*Inserting Values into the Table*/
('Captain', 'steve@captain.com', 'steve1234'),
('IronMan','Tony@stark.com', 'tony567'),
('Batman','bruce@wayne.com', 'bruce1234'),
('WonderWoman','diana@amazon.com', 'princessdiana'),
('SpiderMan', 'peter@parker.com', 'parker@1234');

SELECT * FROM tbl_user_login WHERE    /* Applying AND Operator to get specific row => normally requires at the time of login to cross-check user credentials*/
Email = 'steve@captain.com' AND
Password = 'steve1234';

SELECT * FROM tbl_user_login WHERE   /* Applying OR Operator to get specific row => normally requires when a user forgets his username or password */
USERNAME ='SpiderMan' OR
Email = 'peter@parker.com';

SELECT * FROM tbl_user_login WHERE  /* Applying NOT Operator to exclude a certain row */
NOT UserName = 'WonderWoman';

SELECT * FROM tbl_user_login WHERE   /* Applying NOT Operator in usual way to exclude a certain row */
UserName != 'WonderWoman';