USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_StudentFilter]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_StudentFilter]
	@BranchID		INT = NULL,
	@CityID			INT = NULL,
	@StudentName	VARCHAR(100) = NULL,
	@Email			VARCHAR(100) = NULL,
	@Gender			VARCHAR(100) = NULL
AS

SELECT	[dbo].[MST_Student].[StudentID],
		[dbo].[MST_Student].[StudentName],
		[dbo].[MST_Student].[MobileNoStudent],
		[dbo].[MST_Student].[Email],
		[dbo].[MST_Student].[MobileNoFather],
		[dbo].[MST_Student].[Address],
		[dbo].[MST_Student].[BirthDate],
		[dbo].[MST_Student].[Age],
		[dbo].[MST_Student].[IsActive],
		[dbo].[MST_Student].[Gender],
		[dbo].[MST_Student].[Password],
		[dbo].[MST_Student].[Created],
		[dbo].[MST_Student].[Modified],
		[dbo].[MST_Branch].[BranchID],
		[dbo].[MST_Branch].[BranchName],
		[dbo].[MST_Branch].[BranchCode],
		[dbo].[LOC_City].[CityID],
		[dbo].[LOC_City].[CityName],
		[dbo].[LOC_City].[Citycode]
		
FROM [dbo].[MST_Student]

INNER JOIN [LOC_City]
ON [MST_Student].CityID = [LOC_City].CityID

INNER JOIN [MST_Branch]
ON [MST_Student].BranchID = [MST_Branch].BranchID

Where (
		(@BranchID IS NULL OR [dbo].[MST_Branch].[BranchID] = @BranchID) AND
		(@CityID IS NULL OR [dbo].[LOC_City].CityID = @CityID) AND
		(@StudentName IS NULL OR StudentName LIKE CONCAT('%',@StudentName,'%')) AND
		(@Email IS NULL OR Email LIKE CONCAT('%',@Email,'%')) AND
		(@Gender IS NULL OR Gender LIKE CONCAT('%',@Gender,'%'))
		)
GO
