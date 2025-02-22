USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_UpdateByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_UpdateByPK]
@StateID		INT,
@StateName		VARCHAR(100),
@StateCode		VARCHAR(100),
@CountryID		INT,
@Modified		DATETIME

AS

UPDATE [dbo].[LOC_State]

SET StateName = @StateName,
	StateCode = @StateCode,
	CountryID = @CountryID,
	Modified = ISNULL(@Modified,GETDATE())
			
WHERE [dbo].[LOC_State].[StateID] = @StateID
SELECT * FROM LOC_State
GO
