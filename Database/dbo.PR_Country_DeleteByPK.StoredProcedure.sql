USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_DeleteByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Country_DeleteByPK]
@CountryID		INT
AS
DELETE FROM [dbo].[LOC_Country]
WHERE [dbo].[LOC_Country].[CountryID] = @CountryID
GO
