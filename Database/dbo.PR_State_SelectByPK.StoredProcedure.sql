USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_SelectByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_SelectByPK]
@StateID INT
AS

SELECT	[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName],
		[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[Statecode],
		[dbo].[LOC_State].[Created],
		[dbo].[LOC_State].[Modified],
		[dbo].[LOC_State].[CountryID]

FROM [dbo].[LOC_State]

INNER JOIN [dbo].[LOC_Country]
ON [dbo].[LOC_State].[CountryID] = [dbo].[LOC_Country].[CountryID]

WHERE [dbo].[LOC_State].[StateID] = @StateID

ORDER BY [dbo].[LOC_State].[StateName]
GO
