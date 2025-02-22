USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_Insert]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Branch_Insert]
@BranchName		VARCHAR(100),
@BranchCode		VARCHAR(100),
@Created		DATETIME,
@Modified		DATETIME


AS

INSERT INTO [dbo].MST_Branch
(
		[BranchName],
		[BranchCode],
		[Created],
		[Modified]
)
VALUES
(
		@BranchName,
		@BranchCode,
		ISNULL(@Created,GETDATE()),
		ISNULL(@Modified,GETDATE())
)
GO
