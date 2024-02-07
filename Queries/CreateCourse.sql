USE [ExaminationSystemDB]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 2/7/2024 12:16:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Course](
	[CourseID] [int] NOT NULL,
	[InstructorID] [int] NULL,
	[CourseName] [varchar](50) NULL,
	[CourseDuration] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Instructor] FOREIGN KEY([InstructorID_FK])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Instructor]
GO


