/* Run this after you have setup the data base */

USE PlumaCMS
GO

INSERT 
INTO dbo.Users(FirstName, LastName, Email, Passhash)
VALUES ('Thomas', 'Katz', 'tkatz@fake.io', NULL)

