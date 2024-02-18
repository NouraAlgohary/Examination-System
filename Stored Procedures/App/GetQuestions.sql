USE [ExaminationSystemDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[GetQuestoins] @StudentID INT
AS
BEGIN
	SELECT ExamID, q.QuestionID, QuestionTitle, Choices
	FROM TakesExam
	JOIN Questions q
	ON TakesExam.QuestionID = q.QuestionID
	JOIN Choices c
	ON q.QuestionID = c.QuestionID
	WHERE StudentID = @StudentID AND ExamID = (SELECT MAX(ExamID) FROM Exam)
	ORDER BY 
	    CASE 
	        WHEN QuestionType = 'TF' THEN 0
	        ELSE 1
	    END,
	    QuestionType
END;