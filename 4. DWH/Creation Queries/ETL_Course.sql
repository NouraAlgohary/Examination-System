SELECT c.CourseID, c.CourseName, c.CourseDuration, t.TrackID, t.TrackName,CONCAT(i2.FirstName, ' ', i2.lastname) AS TrackSupervisor
, TopicName, CONCAT(i.FirstName, ' ', i.lastname) AS CourseInstructor
FROM Course c
LEFT JOIN TrackCourse tc
ON c.CourseID = tc.CourseID
LEFT JOIN Track t
ON tc.TrackID = t.TrackID
LEFT JOIN CourseTopic ct
ON c.CourseID = ct.CourseID
LEFT JOIN Topic 
ON ct.TopicID = Topic.TopicID
LEFT JOIN Instructor i
ON c.InstructorID = i.InstructorID
LEFT JOIN Instructor i2
ON t.InstructorID = i2.InstructorID