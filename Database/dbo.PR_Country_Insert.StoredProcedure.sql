USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_Insert]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Country_Insert]
@CountryName		VARCHAR(100),
@CountryCode		VARCHAR(100),
@Created			DATETIME,
@Modified			DATETIME
AS

INSERT INTO [dbo].[LOC_Country]
(
	[CountryName],
	[CountryCode],
	[Created],
	[Modified]
)
VALUES
(
		@CountryName,	
		@CountryCode,
		ISNULL(@Created,getdate()),
		ISNULL(@Modified,getdate())
)
GO
