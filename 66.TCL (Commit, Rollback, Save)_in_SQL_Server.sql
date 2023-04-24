CREATE TABLE sampleTable
(
id int
);

INSERT INTO sampleTable VALUES (1), (2);

SELECT * FROM sampleTable;

BEGIN TRANSACTION;    -- Transaction statement will keep record of all the modifications (update, insert and delete) 
	INSERT INTO sampleTable VALUES (3), (4);   -- in the dataBase
	
ROLLBACK;  -- Rollback will rollback the changes till the point of transaction begin but not before that.

BEGIN TRANSACTION;
INSERT INTO sampleTable VALUES (3),(4);
SAVE TRANSACTION A;    -- Save Transaction and give it a user-defined name in this case 'A'

BEGIN TRANSACTION;
INSERT INTO sampleTable VALUES (5),(6);
SAVE TRANSACTION B;     -- Save Transaction and give it a user-defined name in this case 'B'

ROLLBACK TRANSACTION A;   -- Rollback to a particular point in the Transaction

COMMIT;   -- Commit to save changes permanently 