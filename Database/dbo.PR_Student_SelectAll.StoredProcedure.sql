USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_SelectAll]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Student_SelectAll]
AS

SELECT	[dbo].[MST_Student].[StudentID],
		[dbo].[MST_Student].[StudentName],
		[dbo].[MST_Student].[MobileNoStudent],
		[dbo].[MST_Student].[Email],
		[dbo].[MST_Student].[MobileNoFather],
		[dbo].[MST_Student].[Address],
		[dbo].[MST_Student].[BirthDate],
		[dbo].[MST_Student].[Age],
		[dbo].[MST_Student].[IsActive],
		[dbo].[MST_Student].[Gender],
		[dbo].[MST_Student].[Password],
		[dbo].[MST_Student].[Created],
		[dbo].[MST_Student].[Modified],
		[dbo].[MST_Branch].[BranchID],
		[dbo].[MST_Branch].[BranchName],
		[dbo].[MST_Branch].[BranchCode],
		[dbo].[LOC_City].[CityID],
		[dbo].[LOC_City].[CityName],
		[dbo].[LOC_City].[Citycode],
		[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName],
		[dbo].[LOC_State].[StateCode],
		[dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_Country].[CountryCode]
		
FROM [dbo].[MST_Student]

INNER JOIN [LOC_City]
ON [MST_Student].CityID = [LOC_City].CityID

INNER JOIN [MST_Branch]
ON [MST_Student].BranchID = [MST_Branch].BranchID

INNER JOIN [LOC_State]
ON [LOC_City].StateID = [LOC_State].StateID 

INNER JOIN [LOC_Country]
ON [LOC_City].CountryID = [LOC_Country].CountryID

ORDER BY [dbo].[MST_Student].[StudentName],[dbo].[MST_Branch].[BranchName],[dbo].[LOC_City].[CityName],[dbo].[LOC_Country].[CountryName]

GO
