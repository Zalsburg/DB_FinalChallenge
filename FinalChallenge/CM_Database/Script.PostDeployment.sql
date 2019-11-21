/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

DELETE FROM [dbo].[Sale];
DELETE FROM [dbo].[Record];
DELETE FROM [dbo].[Customer];
DELETE FROM [dbo].[Interest];

INSERT INTO [dbo].[Interest] ([InterestCode], [Desc])
VALUES	('RR', 'Rock and Roll'),
		('JA', 'Jazz'),
		('RB', 'Rhythm and Blues');

INSERT INTO [dbo].[Customer] ([CustNo], [Name], [Address], [PostCode], [InterestCode])
VALUES	(123, 'Jimmy Barnes', '1 Sesame St', 3000, 'RR'),
		(456, 'Ian Moss', '10 Downing St', 4000, 'JA'),
		(789, 'Don Walker', '221B Baker St', 5000, 'RB'),
		(234, 'Steve Prestwich', 'LG1 College Cres, Parkville', 6000, 'RR'),
		(567, 'Phil Small', '1 Adelaide Avenue', 7000, 'RB');

INSERT INTO [dbo].[Record] ([RecordId], [Title], [Performer])
VALUES	('PF003', 'The Wall', 'Pink Floyd'),
		('IX002', 'Kick', 'INXS'),
		('SP069', 'Never Mind the Bollocks', 'Sex Pistols'),
		('PF002', 'The Dark Side of the Moon', 'Pink Floyd'),
		('IX005', 'Shabooh Shoobah', 'INXS'),
		('SP070', 'Floggin a Dead Horse', 'Sex Pistols'),
		('PF004', 'The Endless River', 'Pink Floyd'),
		('PF006', 'Wish You Were Here', 'Pink Floyd'),
		('SP075', 'Agents of Anarchy', 'Sex Pistols'),
		('PF007', 'The Division Bell', 'Pink Floyd');

INSERT INTO [dbo].[Sale] ([CustNo], [RecordId], [DateOrdered], [Price])
VALUES	(123, 'PF003', '2015-12-01', 30.00), 
		(123, 'IX002', '2015-12-01', 29.95),
		(123, 'SP069', '2015-12-02', 12.45),
		(123, 'IX002', '2015-12-05', 30.00),
		(456, 'PF002', '2015-12-01', 31.00),
		(456, 'IX005', '2015-12-03', 28.95),
		(456, 'SP070', '2015-12-06', 13.45),
		(789, 'PF004', '2015-12-02', 29.00),
		(789, 'IX002', '2015-12-05', 29.95),
		(234, 'PF006', '2015-12-01', 45.00),
		(234, 'SP075', '2015-12-04', 5.67),
		(567, 'PF007', '2015-12-03', 9.95);
