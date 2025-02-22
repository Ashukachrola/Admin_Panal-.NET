USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_CountryFilter]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_CountryFilter]
@CountryData VARCHAR(100) = NULL

As
SELECT		[dbo].[LOC_Country].[CountryID],
			[dbo].[LOC_Country].[CountryName],
			[dbo].[LOC_Country].[CountryCode],
			[dbo].[LOC_Country].[Created],
			[dbo].[LOC_Country].[Modified]
FROM [dbo].[LOC_Country]
Where
(
		(@CountryData IS NULL OR CountryName LIKE CONCAT('%',@CountryData,'%')) OR
		(@CountryData IS NULL OR CountryCode LIKE CONCAT('%',@CountryData,'%'))
)
GO
