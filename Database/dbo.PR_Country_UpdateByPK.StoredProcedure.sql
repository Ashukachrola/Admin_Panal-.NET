USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_UpdateByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Country_UpdateByPK]
@CountryID			INT,
@CountryName		VARCHAR(100),
@CountryCode		VARCHAR(100),
@Modified			DATETIME

AS

UPDATE [dbo].[LOC_Country]

SET	[CountryCode] = @CountryCode,		
	[CountryName] = @CountryName,
	Modified = ISNULL(@Modified,GETDATE())
WHERE [dbo].[LOC_Country].[CountryID] = @CountryID
GO
