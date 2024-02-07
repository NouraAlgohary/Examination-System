USE [ExaminationSystemDB]
GO

CREATE TABLE [dbo].[TakesExam](
	StudentID INT NOT NULL,
	ExamID INT NOT NULL,
	QuestionID INT NOT NULL,
	StudentAnswer VARCHAR(255) NOT NULL ,
	Score INT NOT NULL

	 CONSTRAINT [StudentID],[ExamID],[QuestionID] PRIMARY KEY CLUSTERED

	 CONSTRAINT FK_StudentID2 FOREIGN KEY StudentID REFERENCES Student(StudentID)

	 CONSTRAINT FK_QuestionID2 FOREIGN KEY QuestionID REFERENCES Questions(QuestionID)

	 CONSTRAINT FK_ExamID FOREIGN KEY ExamID REFERENCES Exam(ExamID)


	 CONSTRAINT CHK_Score CHECK (Score IN (0, 1))
)