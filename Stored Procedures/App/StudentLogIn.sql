ALTER PROCEDURE [dbo].[StudentLogin]
    @Email VARCHAR(50),
    @Password VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT StudentID
    FROM Student
    WHERE Email = @Email AND [Password] = @Password;
END;
