USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_LOC_State_SelectComboBoxByCountryName]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC PR_LOC_State_SelectComboBoxByCountryName 45
CREATE PROCEDURE [dbo].[PR_LOC_State_SelectComboBoxByCountryName]
@CountryID INT
AS
SELECT	[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName]
FROM [dbo].[LOC_State]
WHERE [dbo].[LOC_State].[CountryID] = @CountryID
GO
