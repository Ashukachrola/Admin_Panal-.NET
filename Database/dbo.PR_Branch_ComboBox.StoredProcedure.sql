USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_ComboBox]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Branch_ComboBox]
AS
SELECT	[dbo].[MST_Branch].[BranchID],
		[dbo].[MST_Branch].[BranchName]
FROM [dbo].[MST_Branch]
GO
