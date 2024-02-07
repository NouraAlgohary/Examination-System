USE [ExaminationSystemDB]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NULL,
	[Age] [int] NULL CHECK ([Age] BETWEEN 20 AND 35),
	[Gender] [varchar](6) NULL,
	[Phone] [nchar](11) NULL,
	[Location] [varchar](50) NULL,
	[Faculty] [varchar](50) NULL,
	[GraduationYear] [int] NULL,
	[Email] [varchar](50) NOT NULL CHECK (EMAIL LIKE '%_@%.%'), 
	[Password] [varchar](50) NOT NULL CHECK (LEN([Password]) >= 8), 
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO