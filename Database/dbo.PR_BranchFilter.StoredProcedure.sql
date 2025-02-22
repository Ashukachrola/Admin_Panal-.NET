USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_BranchFilter]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_BranchFilter]
@BranchName varchar(100) = NULL,
@BranchCode varchar(100) = NULL
AS

SELECT	[dbo].MST_Branch.[BranchID],
		[dbo].MST_Branch.[BranchName],
		[dbo].MST_Branch.[BranchCode],
		[dbo].MST_Branch.[Created],
		[dbo].MST_Branch.[Modified]
		
FROM [dbo].MST_Branch
Where (
		(@BranchName IS NULL OR BranchName LIKE CONCAT('%',@BranchName,'%')) AND
		(@BranchCode IS NULL OR BranchCode LIKE CONCAT('%',@BranchCode,'%'))
		)
GO
