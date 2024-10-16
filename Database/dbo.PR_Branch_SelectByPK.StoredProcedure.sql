USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_SelectByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Branch_SelectByPK] 
@BranchID INT
AS

SELECT	[dbo].MST_Branch.[BranchID],
		[dbo].MST_Branch.[BranchName],
		[dbo].MST_Branch.[BranchCode],
		[dbo].MST_Branch.[Created],
		[dbo].MST_Branch.[Modified]

FROM [dbo].MST_Branch

WHERE [dbo].MST_Branch.[BranchID] = @BranchID

ORDER BY [dbo].MST_Branch.[BranchName]
GO
