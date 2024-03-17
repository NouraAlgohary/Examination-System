USE [ExaminationSystemDWH]
GO

/****** Object:  Table [dbo].[Fact|Exam]    Script Date: 2/19/2024 12:28:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fact|Exam](
	[ExamSk] [int] IDENTITY(1,1) NOT NULL,
	[StudentFK] [int] NULL,
	[InstructorFK] [int] NULL,
	[QuestionsFK] [int] NULL,
	[BranchFK] [int] NULL,
	[CourseFK] [int] NULL,
	[DateFK] [int] NULL,
	[Score] [float] NULL,
	[source_system_code] [tinyint] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_Fact|Exam] PRIMARY KEY CLUSTERED 
(
	[ExamSk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Fact|Exam] ADD  CONSTRAINT [DF_FactExam_created_at]  DEFAULT (getdate()) FOR [created_at]
GO

ALTER TABLE [dbo].[Fact|Exam]  WITH CHECK ADD  CONSTRAINT [FK_FACT|Exam_DIM|Branch] FOREIGN KEY([BranchFK])
REFERENCES [dbo].[DIM|Branch] ([BranchSK])
GO

ALTER TABLE [dbo].[Fact|Exam] CHECK CONSTRAINT [FK_FACT|Exam_DIM|Branch]
GO

ALTER TABLE [dbo].[Fact|Exam]  WITH CHECK ADD  CONSTRAINT [FK_Fact|Exam_DIM|Course] FOREIGN KEY([CourseFK])
REFERENCES [dbo].[DIM|Course] ([CourseSK])
GO

ALTER TABLE [dbo].[Fact|Exam] CHECK CONSTRAINT [FK_Fact|Exam_DIM|Course]
GO

ALTER TABLE [dbo].[Fact|Exam]  WITH CHECK ADD  CONSTRAINT [FK_Fact|Exam_DIM|Date] FOREIGN KEY([DateFK])
REFERENCES [dbo].[DIM|Date] ([DateSK])
GO

ALTER TABLE [dbo].[Fact|Exam] CHECK CONSTRAINT [FK_Fact|Exam_DIM|Date]
GO

ALTER TABLE [dbo].[Fact|Exam]  WITH CHECK ADD  CONSTRAINT [FK_Fact|Exam_DIM|Instructor] FOREIGN KEY([InstructorFK])
REFERENCES [dbo].[DIM|Instructor] ([InstructorSK])
GO

ALTER TABLE [dbo].[Fact|Exam] CHECK CONSTRAINT [FK_Fact|Exam_DIM|Instructor]
GO

ALTER TABLE [dbo].[Fact|Exam]  WITH CHECK ADD  CONSTRAINT [FK_Fact|Exam_DIM|Questions] FOREIGN KEY([QuestionsFK])
REFERENCES [dbo].[DIM|Questions] ([QuestionSK])
GO

ALTER TABLE [dbo].[Fact|Exam] CHECK CONSTRAINT [FK_Fact|Exam_DIM|Questions]
GO

ALTER TABLE [dbo].[Fact|Exam]  WITH CHECK ADD  CONSTRAINT [FK_Fact|Exam_DIM|Student] FOREIGN KEY([StudentFK])
REFERENCES [dbo].[DIM|Student] ([Student_SK])
GO

ALTER TABLE [dbo].[Fact|Exam] CHECK CONSTRAINT [FK_Fact|Exam_DIM|Student]
GO


