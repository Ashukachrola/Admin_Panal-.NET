USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_State_Insert]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_Insert]
@StateName		VARCHAR(100),
@StateCode		VARCHAR(100),
@CountryID		INT,
@Created		DATETIME,
@Modified		DATETIME

AS

INSERT INTO [dbo].[LOC_State]
(
	[StateName],
	[StateCode],
	[CountryID],
	[Created],
	[Modified]
)
VALUES
(
		@StateName,	
		@StateCode,
		@CountryID,
		ISNULL(@Created,getdate()),
		ISNULL(@Modified,getdate())
)


GO
