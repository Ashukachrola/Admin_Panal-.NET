USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_Insert]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Student_Insert]
@BranchID			INT,
@CityID				INT,
@StudentName		VARCHAR(100),
@MobileNoStudent	BIGINT,
@Email				VARCHAR(100),
@MobileNoFather		BIGINT,
@Address			VARCHAR(100),
@BirthDate			DATETIME,
@Age				INT,
@IsActive			BIT,
@Gender				VARCHAR(100),
@Password			VARCHAR(100),
@created datetime,
@modified datetime

AS

INSERT INTO [dbo].[MST_Student]
(
	[BranchID],		
	[CityID],			
	[StudentName],	
	[MobileNoStudent],
	[Email],	
	[MobileNoFather],	
	[Address],		
	[BirthDate],		
	[Age],			
	[IsActive],	
	[Gender],			
	[Password],
	[Created],
	[Modified]	

)
VALUES
(
	@BranchID,		
	@CityID,			
	@StudentName,	
	@MobileNoStudent,
	@Email,			
	@MobileNoFather,	
	@Address,		
	@BirthDate,		
	@Age,			
	@IsActive,		
	@Gender,		
	@Password,
	@created,
	@modified
)

GO
