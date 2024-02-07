USE [ExaminationSystemDB]
GO

/****** Object:  Table [dbo].[TrackCourse]    Script Date: 2/7/2024 12:16:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TrackCourse](
	[TrackID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[HiringDate] [datetime] NULL,
 CONSTRAINT [PK_TrackCourse] PRIMARY KEY CLUSTERED 
(
	[TrackID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TrackCourse]  WITH CHECK ADD  CONSTRAINT [FK_TrackCourse_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO

ALTER TABLE [dbo].[TrackCourse] CHECK CONSTRAINT [FK_TrackCourse_Course]
GO

ALTER TABLE [dbo].[TrackCourse]  WITH CHECK ADD  CONSTRAINT [FK_TrackCourse_Track] FOREIGN KEY([TrackID])
REFERENCES [dbo].[Track] ([TrackID])
GO

ALTER TABLE [dbo].[TrackCourse] CHECK CONSTRAINT [FK_TrackCourse_Track]
GO


