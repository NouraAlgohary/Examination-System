Create Procedure SelectStudent @StudentID INT 
as
BEGIN

SELECT FirstName,LastName,Age,Gender,Phone,Location,Faculty,GraduationYear,Email,B.BranchLocation,T.TrackName FROM Student S
inner join Branch B  ON S.BranchID=B.BranchID
inner join Track T on S.TrackID=T.TrackID
Where StudentID=@StudentID

END

