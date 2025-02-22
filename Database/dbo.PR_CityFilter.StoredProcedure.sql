USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_CityFilter]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_CityFilter]
	@CountryID	INT = NULL,
	@StateID	INT = NULL,
	@CityName	VARCHAR(100) = NULL,
	@CityCode	VARCHAR(100) = NULL
AS
	SELECT  [dbo].[LOC_City].[CityID],
			[dbo].[LOC_City].[CityName],
			[dbo].[LOC_City].[Citycode],
			[dbo].[LOC_City].[StateID],
			[dbo].[LOC_State].[StateName],
			[dbo].[LOC_City].[CountryID],
		    [dbo].[LOC_Country].[CountryName],
			[dbo].[LOC_City].[CreationDate],
			[dbo].[LOC_City].[Modified]

	FROM [dbo].[LOC_City]

	INNER JOIN [dbo].[LOC_State]
	ON [dbo].[LOC_State].[StateID] = [dbo].[LOC_City].[StateID]

	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]
	Where (
		(@CountryID IS NULL OR [dbo].[LOC_City].[CountryID] = @CountryID) AND
		(@StateID IS NULL OR [dbo].[LOC_City].[StateID] = @StateID) AND
		(@CityName IS NULL OR CityName LIKE CONCAT('%',@CityName,'%')) AND
		(@CityCode IS NULL OR Citycode LIKE CONCAT('%',@CityCode,'%'))
		)
GO
