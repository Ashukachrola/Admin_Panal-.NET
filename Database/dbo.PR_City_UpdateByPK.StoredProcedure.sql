USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_City_UpdateByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_City_UpdateByPK]
@CityID			INT,
@CityName		VARCHAR(100),
@Citycode		VARCHAR(100),
@StateID		INT,
@CountryID		INT,
@Modified			DATETIME

AS

UPDATE [dbo].[LOC_City]

SET	[CityName] = @CityName,
	[Citycode] = @Citycode,
	[StateID]= @StateID,		
	[CountryID] = @CountryID,
	[Modified] = ISNULL(@Modified,GETDATE())
	
WHERE [dbo].[LOC_City].[CityID] = @CityID
GO
