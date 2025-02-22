USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_UpdateByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Branch_UpdateByPK]
@BranchID			INT,
@BranchName		VARCHAR(100),
@BranchCode		VARCHAR(100),
@Modified		DATETIME

AS

UPDATE [dbo].MST_Branch

SET	[BranchName] = @BranchName,
	[BranchCode] = @BranchCode,
	[Modified] = ISNULL(@Modified,GETDATE())
	
WHERE [dbo].MST_Branch.[BranchID] = @BranchID
GO
