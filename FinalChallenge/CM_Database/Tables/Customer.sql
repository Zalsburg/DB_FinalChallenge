CREATE TABLE [dbo].[Customer]
(
	[CustNo]		INT,
	[Name]			NVARCHAR(50),
	[Address]		NVARCHAR(50),
	[PostCode]		INT,
	[InterestCode]	NVARCHAR(2),
	PRIMARY KEY ([CustNo]),
	FOREIGN KEY ([InterestCode]) REFERENCES [dbo].[Interest]
)
