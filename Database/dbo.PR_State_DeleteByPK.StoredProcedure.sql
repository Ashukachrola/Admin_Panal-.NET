USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_DeleteByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_DeleteByPK]
@StateID		INT
AS
DELETE FROM [dbo].[LOC_State]
WHERE [dbo].[LOC_State].[StateID] = @StateID
GO
