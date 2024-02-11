----1- Returns the students information according to Department (TRACK) Using ID or Track Name.

Create Procedure StudentAccordingToTrack  @TrackID INT =NULL , @TrackName VARCHAR(50) =NULL
WITH ENCRYPTION
AS

BEGIN
        -- Select by TrackId

    IF @TrackID IS NOT NULL
    BEGIN
        SELECT * FROM Student WHERE TrackID = @TrackID
    END
	    
		-- Select By TrackName

    ELSE IF @TrackName IS NOT NULL
    BEGIN

        SELECT * FROM Student S 
		inner join Track T on S.TrackId=T.TrackID WHERE T.TrackName = @TrackName;
    END
    
END;






-----------------------------
--2- Takes the student ID and returns the grades of the student in all courses. %














GO

-----------------------------------
--3- takes the instructor ID and returns the name of the courses that he teaches and the number of student per course.
Create Procedure Count_Instructor_Students @InstrctorID INT 
WITH ENCRYPTION
AS
	
	Begin

	SELECT c.coursename, COUNT(s.studentid) AS CountStudents
    FROM course c
    inner JOIN studentcourse sc ON c.courseid = sc.courseid
    inner JOIN student s ON sc.studentid = s.studentid
	WHERE C.InstructorID=@InstrctorID
    GROUP BY c.coursename;
	
	END;
Go
	--------------------------------
--4 takes course ID and returns its topics  


Create Procedure Course_Topics @CourseID INT 
WITH ENCRYPTION
AS
	
	Begin

	SELECT c.coursename, T.TopicName
    FROM course c
    inner JOIN CourseTopic CT ON c.courseid =CT.CourseID
    inner JOIN topic T ON CT.TopicID = T.TopicID
	WHERE C.CourseID=@CourseID	
	END;



	-----------------------
	-- 5-	Report that takes exam number and returns the Questions in it and chocies [freeform report]















	-------------------
	--6 -

