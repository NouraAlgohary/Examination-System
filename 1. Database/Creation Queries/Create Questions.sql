CREATE TABLE Questions(
QuestionID INT PRIMARY kEY,
CourseID INT, 
QuestionType VARCHAR(255),
QuestionTitle VARCHAR(255),
CorrectAnswer VARCHAR(255),

CONSTRAINT FK_CourseID FOREIGN kEY REFERENCES Course(CourseID),
CONSTRAINT CHK_QuestionType CHECK (QuestionType IN ('TF', 'MCQ'))
);