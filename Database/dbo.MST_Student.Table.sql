USE [Student_Registration]
GO
/****** Object:  Table [dbo].[MST_Student]    Script Date: 10/16/2024 1:36:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[BranchID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[StudentName] [varchar](100) NOT NULL,
	[MobileNoStudent] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MobileNoFather] [varchar](100) NULL,
	[Address] [varchar](500) NULL,
	[BirthDate] [datetime] NULL,
	[Age] [int] NULL,
	[IsActive] [bit] NULL,
	[Gender] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[Created] [datetime] NOT NULL CONSTRAINT [DF_MST_Student_Created]  DEFAULT (getdate()),
	[Modified] [datetime] NOT NULL CONSTRAINT [DF_MST_Student_Modified]  DEFAULT (getdate()),
 CONSTRAINT [PK_MST_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[MST_Student]  WITH CHECK ADD  CONSTRAINT [FK_MST_Student_LOC_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[LOC_City] ([CityID])
GO
ALTER TABLE [dbo].[MST_Student] CHECK CONSTRAINT [FK_MST_Student_LOC_City]
GO
ALTER TABLE [dbo].[MST_Student]  WITH CHECK ADD  CONSTRAINT [FK_MST_Student_MST_Branch] FOREIGN KEY([BranchID])
REFERENCES [dbo].[MST_Branch] ([BranchID])
GO
ALTER TABLE [dbo].[MST_Student] CHECK CONSTRAINT [FK_MST_Student_MST_Branch]
GO
