
-- Creating a dataBase named Airline --
CREATE DATABASE Airlines;

CREATE TABLE flightPassengers   -- Creating Table for flight passengers --
(
	flightId INT IDENTITY PRIMARY KEY,
	firstName VARCHAR(20) NOT NULL,
	flightCode VARCHAR(20) NOT NULL,
	flightDate DATE NOT NULL,
	seat VARCHAR (5) NOT NULL
);

INSERT INTO flightPassengers(firstName, flightCode, flightDate, seat) VALUES  -- Inserting values into flightPassengers --
('SMITH', 'SQL2022', GETDATE(), '7F'),
('ADAM', 'SQL2022', GETDATE(), '20A'),
('MIKE', 'SQL2022', GETDATE(), '4B');


CREATE TABLE checkIn   -- Creating Table for check In --
(
	firstName VARCHAR(20) NOT NULL,
	flightCode VARCHAR(20) NOT NULL,
	flightDate DATE NOT NULL,
	seat VARCHAR (5) NOT NULL
);

INSERT INTO checkIn(firstName, flightCode, flightDate, seat) VALUES  -- Inserting values into check In --
('SMITH', 'SQL2022', GETDATE(), '7F'),
('ADAM', 'SQL2022', GETDATE(), '2B'),
('MIKE', 'SQL2022', GETDATE(), '17A');

SELECT * FROM flightPassengers;
SELECT * FROM checkIn;

MERGE flightPassengers F   -- Target Table
USING checkIn C			   -- Source Table	
ON F.firstName = C.firstName  -- JOIN condition will be applied on all the columns except the one column where the difference can occur
AND F.flightCode = C.flightCode
AND F.flightDate = C.flightDate
WHEN MATCHED                   -- All conditions in Join are staisfied, except that one differing column so update will be performed
	THEN UPDATE SET F.seat = C.seat
WHEN NOT MATCHED BY TARGET        -- None of the condition in join is satified by the target, so that's a new row so Insert operation will be performed
	THEN INSERT (firstName, flightCode, flightDate, seat)
	VALUES (firstName, flightCode, flightDate, seat)
WHEN NOT MATCHED BY SOURCE          -- None of the condition in join is satified by the source, so Delete operation will be performed
	THEN DELETE;    -- This statement must be terminated by semi-colon