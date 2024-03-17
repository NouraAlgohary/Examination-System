USE [ExaminationSystemDB]
GO

/****** Object:  Table [dbo].[CourseTopic]    Script Date: 2/7/2024 12:15:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CourseTopic](
	[TopicID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_CourseTopic] PRIMARY KEY CLUSTERED 
(
	[TopicID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CourseTopic]  WITH CHECK ADD  CONSTRAINT [FK_CourseTopic_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO

ALTER TABLE [dbo].[CourseTopic] CHECK CONSTRAINT [FK_CourseTopic_Course]
GO

ALTER TABLE [dbo].[CourseTopic]  WITH CHECK ADD  CONSTRAINT [FK_CourseTopic_Topic] FOREIGN KEY([TopicID])
REFERENCES [dbo].[Topic] ([TopicID])
GO

ALTER TABLE [dbo].[CourseTopic] CHECK CONSTRAINT [FK_CourseTopic_Topic]
GO


