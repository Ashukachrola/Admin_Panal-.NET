USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_SelectAll]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_SelectAll]
AS

SELECT	[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName],
		[dbo].[LOC_State].[StateCode],
		[dbo].[LOC_State].[CountryID],
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_State].[Created],
		[dbo].[LOC_State].[Modified]
		
FROM [dbo].[LOC_State]
INNER JOIN [dbo].[LOC_Country]
ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]


/*INNER JOIN [dbo].[LOC_City]
ON [dbo].[LOC_State].[StateID] = [dbo].[LOC_City].[StateID]


ORDER BY [dbo].[LOC_Country].[CountryName],[dbo].[LOC_State].[StateName],[dbo].[LOC_City].[CityName]
*/

GO
