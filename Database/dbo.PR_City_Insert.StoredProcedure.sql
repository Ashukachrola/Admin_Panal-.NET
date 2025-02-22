USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_City_Insert]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_City_Insert]
@CityName		VARCHAR(100),
@Citycode		VARCHAR(100),
@StateID		INT,
@CountryID		INT,
@CreationDate	DATETIME,
@Modified		DATETIME

AS

INSERT INTO [dbo].[LOC_City]
(
		[CityName],
		[Citycode],
		[StateID],
		[CountryID],
		[CreationDate],
		[Modified]
)
VALUES
(
		@CityName,
		@Citycode,
		@StateID,
		@CountryID,
		ISNULL(@CreationDate,getdate()),
		ISNULL(@Modified,getdate())
)
GO
