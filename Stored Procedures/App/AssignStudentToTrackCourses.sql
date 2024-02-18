--- This procedure should take the new added student id and  assign him to the courses that in his track ,
-- This will happen by inserting the student id and the courses id in the StudentCourse table
Create Procedure AssignStudentToTrackCourses @StudentID INT
as
begin 
	
	declare @TrackID  int
	Set @TrackID = (select trackid from Student where StudentID=@StudentID)

	
	declare @CourseID int  
	set @CourseID = (Select CourseID from TrackCourse where TrackID= @TrackID)

	
	


end ;
