USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_SelectAll]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[PR_Country_SelectAll]
AS

SELECT	[dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName],
		[dbo].[LOC_Country].[CountryCode],
		[dbo].[LOC_Country].[Created],
		[dbo].[LOC_Country].[Modified]

FROM [dbo].[LOC_Country]

ORDER BY [dbo].[LOC_Country].[CountryName]
GO
