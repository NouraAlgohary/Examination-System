USE [ExaminationSystemDB]
GO

/****** Object:  Table [dbo].[Instructor]    Script Date: 2/7/2024 10:26:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Instructor](
	[InstructorID] [int] NOT NULL,
	[FirstName] [varchar](20) NULL,
	[LastName] [varchar](20) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](6) NULL,
	[Phone] [nchar](11) NULL,
	[Location] [varchar](50) NULL,
	[WorkingStatus] [varchar](20) NULL,
	[Salary] [int] NULL,
	[HiringDate] [datetime] NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


