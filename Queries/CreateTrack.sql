USE [ExaminationSystemDB]
GO

/****** Object:  Table [dbo].[Track]    Script Date: 2/7/2024 12:15:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Track](
	[TrackID] [int] NOT NULL,
	[InstructorID] [int] NULL,
	[TrackName] [varchar](50) NULL,
 CONSTRAINT [PK_Track] PRIMARY KEY CLUSTERED 
(
	[TrackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Track]  WITH CHECK ADD  CONSTRAINT [FK_Track_Instructor] FOREIGN KEY([InstructorID_FK])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO

ALTER TABLE [dbo].[Track] CHECK CONSTRAINT [FK_Track_Instructor]
GO


