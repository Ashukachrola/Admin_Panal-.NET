USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_ComboBox]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_ComboBox]
AS
SELECT	[dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName]
FROM [dbo].[LOC_Country]
GO
