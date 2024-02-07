USE [ExaminationSystemDB]
GO

CREATE TABLE [dbo].[Exam](
	ExamID INT NOT NULL,
	Date DateTime ,
	TotalScore INT NOT NULL,
	
	CONSTRAINT [ExamID] PRIMARY KEY CLUSTERED


)