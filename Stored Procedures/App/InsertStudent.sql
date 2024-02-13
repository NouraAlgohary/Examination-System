CREATE PROCEDURE InsertStudent
    @firstname VARCHAR(50), @lastname VARCHAR(50), @age int, @gender VARCHAR(6), @phone NCHAR(10), 
	@location VARCHAR(255), @faculty VARCHAR(50), @gradutaionyear INT, @Email VARCHAR(50), @Password VARCHAR(50), 
	@branchname VARCHAR(50),@trackname VARCHAR(50)
AS
BEGIN
	DECLARE @trackid INT 
	SELECT @trackid = TrackID FROM Track WHERE TrackName = @trackname

	DEClARE @BranchID INT 
	SELECT @BranchID = BranchID FROM Branch WHERE BranchLocation = @branchname;


    INSERT INTO Student (FirstName, LastName, Age, Gender, Phone, [Location], Faculty, GraduationYear, Email, [Password],BranchID, TrackID)
    VALUES (@firstname, @lastname, @age, @gender, @phone, @location, @faculty, @gradutaionyear,@email, @Password,@BranchID ,@trackid)
END;

EXEC InsertStudent @firstname = "Noura", @lastname = "Mahmoud", @age=24, @gender="Female", 
     @phone = "1092837464", @location = "Mansoura", @faculty ="Engineering", @gradutaionyear = 2023, 
	 @email = "noura@gmail.com", @Password = "a1b2c3d4e5", @trackname="Power BI", @branchname="Mansoura"
