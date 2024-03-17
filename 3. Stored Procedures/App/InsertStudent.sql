--- This procedure will insert a student and will assign him to the courses that in the track that was given in the parameter ,
-- This will happen by inserting the student id and the courses id in the StudentCourse table



USE [ExaminationSystemDB]
GO
/****** Object:  StoredProcedure [dbo].[InsertStudent]    Script Date: 2/15/2024 2:05:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertStudent]
    @firstname VARCHAR(50), @lastname VARCHAR(50), @age int, @gender VARCHAR(6), @phone NCHAR(10), 
	@location VARCHAR(255), @faculty VARCHAR(50), @gradutaionyear INT, @Email VARCHAR(50), @Password VARCHAR(50), 
	@branchname VARCHAR(50),@trackname VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @trackid INT 
	SELECT @trackid = TrackID FROM Track WHERE TrackName = @trackname

	DEClARE @BranchID INT 
	SELECT @BranchID = BranchID FROM Branch WHERE BranchLocation = @branchname;


    	INSERT INTO Student (FirstName, LastName, Age, Gender, Phone, [Location], Faculty, GraduationYear, Email, [Password],BranchID, TrackID)
    	VALUES (@firstname, @lastname, @age, @gender, @phone, @location, @faculty, @gradutaionyear,@email, @Password,@BranchID ,@trackid)

	Declare @StudentID INT 
	Set @StudentID = SCOPE_IDENTITY()
	
    INSERT INTO StudentCourse (StudentID, CourseID)
    SELECT @StudentID, CourseID
    FROM TrackCourse
    WHERE TrackID = @TrackID;
END;
