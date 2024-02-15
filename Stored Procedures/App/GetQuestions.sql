CREATE PROCEDURE GetQuestoins @StudentID INT
AS
BEGIN
	SELECT QuestionTitle, Choices
	FROM TakesExam
	JOIN Questions q
	ON TakesExam.QuestionID = q.QuestionID
	JOIN Choices c
	ON q.QuestionID = c.QuestionID
	WHERE StudentID = @StudentID AND ExamID = (SELECT MAX(ExamID) FROM Exam)
END;

EXEC GetQuestoins 360