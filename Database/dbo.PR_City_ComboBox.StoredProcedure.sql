USE [Student_Registration]
GO
/****** Object:  StoredProcedure [dbo].[PR_City_ComboBox]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_City_ComboBox]
AS
SELECT	[dbo].[LOC_City].[CityID],
		[dbo].[LOC_City].[CityName]
FROM [dbo].[LOC_City]
GO
