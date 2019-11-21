CREATE TABLE [dbo].[Sale]
(
	[CustNo]		INT,
	[RecordId]		NVARCHAR(5),
	[DateOrdered]	DATE,
	[Price]			MONEY,
	PRIMARY KEY ([CustNo], [RecordId], [DateOrdered]),
	FOREIGN KEY ([CustNo]) REFERENCES [dbo].[Customer],
	FOREIGN KEY ([RecordId]) REFERENCES [dbo].[Record]
)
