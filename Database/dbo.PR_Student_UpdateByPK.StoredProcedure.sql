USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_UpdateByPK]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Student_UpdateByPK]
@StudentID			INT,
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
@Modified			DATETIME

AS

UPDATE [dbo].[MST_Student]

SET	[BranchID] = @BranchID,		
	[CityID] = @CityID,			
	[StudentName] = @StudentName,	
	[MobileNoStudent] = @MobileNoStudent,
	[Email] = @Email,	
	[MobileNoFather] = @MobileNoFather,	
	[Address] = @Address,		
	[BirthDate] = @BirthDate,		
	[Age] = @Age,			
	[IsActive] = @IsActive,	
	[Gender] = @Gender,			
	[Password] = @Password,
	[Modified] = ISNULL(@Modified,GETDATE())
	
	
WHERE [dbo].[MST_Student].[StudentID] = @StudentID
GO
