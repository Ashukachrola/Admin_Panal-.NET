USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_ComboBox]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_ComboBox]
AS
SELECT	[dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName]
FROM [dbo].[LOC_State]
GO
