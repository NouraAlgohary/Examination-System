CREATE PROCEDURE InsertCourse 
				@coursename VARCHAR(255), @courseduration INT, @instructorname VARCHAR(50)
AS 
BEGIN
	DECLARE @instructorid INT

	SELECT @instructorid = InstructorID FROM Instructor 
	WHERE CONCAT(FirstName, ' ', LastName) = @instructorname

    INSERT INTO Course (CourseName, CourseDuration, InstructorID)
	VALUES (@coursename, @courseduration, @instructorid)
END;

EXEC InsertCourse @coursename = newCourse, @courseduration=30, @instructorname="Samira Saleh"