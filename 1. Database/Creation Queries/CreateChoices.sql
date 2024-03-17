USE [ExaminationSystemDB]
GO

CREATE TABLE [dbo].[Choices](
	QuestionID INT NOT NULL,
	Choices INT NOT NULL,
	
	CONSTRAINT [PK_Course],[Choices] PRIMARY KEY CLUSTERED
	CONSTRAINT FK_QuestionID FOREIGN KEY QuestionID REFERENCES Questions(QuestionID)

)


