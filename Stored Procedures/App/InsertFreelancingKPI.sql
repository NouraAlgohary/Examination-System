------INSERT  ALL DATA Except JobDescription Optional


CREATE PROCEDURE InsertFreelancingKPI
    @StudentID int,
    @TrackName varchar(50),
    @JobDescription varchar(255) =NULL,
    @Tool varchar(50),
    @Platform varchar(50),
    @Duration int,
    @Cost int
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the student exists
    IF NOT EXISTS (SELECT 1 FROM Student WHERE StudentID = @StudentID)
    BEGIN
        PRINT 'Student does not exist.';
        RETURN; 
    END

    -- Insert into FreelancingKPI table
    INSERT INTO FreelancingKPI (StudentID, TrackName, JobDescription, Tool, Platform, Duration, Cost)
    VALUES (@StudentID, @TrackName, @JobDescription, @Tool, @Platform, @Duration, @Cost);

    PRINT 'FreelancingKPI record inserted successfully.';
END
