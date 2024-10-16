USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_DeleteByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Student_DeleteByPK]
@StudentID		INT
AS
DELETE FROM [dbo].MST_Student
WHERE [dbo].MST_Student.[StudentID] = @StudentID
GO
