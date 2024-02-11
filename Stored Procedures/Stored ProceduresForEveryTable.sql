-- Procedures For Branch
--##########################################################################################################################
use ExaminationSystemDB
go
-------------------------------------------------------------
--Select all branches
CREATE PROCEDURE SelectBranches
with encryption
AS
BEGIN
    SELECT * FROM Branch;
END;

-- Select with other options
go

CREATE PROCEDURE SelectBranch
    @BranchLocation VARCHAR(50) = NULL,
    @BranchManager VARCHAR(50) = NULL
AS
BEGIN
    IF @BranchLocation IS NOT NULL
    BEGIN
        -- Select by location
        SELECT * FROM Branch WHERE BranchLocation = @BranchLocation
    END
    ELSE IF @BranchManager IS NOT NULL
    BEGIN
        -- Select By manager
        SELECT * FROM branch WHERE BranchManager = @BranchManager;
    END
    ELSE
    BEGIN
        -- Select all data if no parameters are provided
        SELECT * FROM branch;
    END
END;


go
-------------------------------------------------------------
-- Insert A branch , making manager insertion optional 

CREATE PROCEDURE InsertBranch
    @BranchLocation Varchar(50),
    @BranchManager  Varchar(50) = NULL
with encryption
AS
BEGIN
    -- Check location already exists
    IF NOT EXISTS (SELECT BranchLocation FROM Branch WHERE BranchLocation = @BranchLocation)
	
    BEGIN
        -- Insert into branch table
        INSERT INTO Branch (BranchLocation, BranchManager) 
        VALUES (@BranchLocation, @BranchManager);
    END
    ELSE
    BEGIN
        -- Raise an error indicating that branch  already exists
        RAISERROR('Branch already exists.', 16, 1);
    END
END;

go
-------------------------------------------------
-- Update Branch with the given parameter

CREATE PROCEDURE UpdateBranch
    @BranchID INT,
    @BranchLocation Varchar(50) =NULL,
    @BranchManager  Varchar(50) = NULL
with encryption
AS
BEGIN
    -- Check if ID  exists TO update 
    IF EXISTS (SELECT BranchID FROM Branch WHERE BranchID = @BranchID)
    BEGIN
        -- Update branch location and manager if they were given in parameters

		IF @BranchLocation IS NOT NULL
			UPDATE Branch SET BranchLocation=@BranchLocation
				WHERE BranchID=@BranchID
		IF @BranchManager IS NOT NULL
			UPDATE Branch SET BranchManager=@BranchManager
				WHERE BranchID=@BranchID   
    END
    ELSE
    BEGIN
        -- Raise an error indicating that branch ID Doesn't exist
        RAISERROR('This Location ID Doesnot Exist', 16, 1);
    END
END;



go
---------------------------------------------------
-- DELETE A BRANCH with ID
CREATE PROCEDURE DeleteBranch
    @BranchID INT ,
    @BranchLocation Varchar(50) =NULL,
    @BranchManager  Varchar(50) = NULL
with encryption

AS
BEGIN
    -- Check if ID exists
    IF EXISTS (SELECT BranchID FROM Branch WHERE BranchID = @BranchID)
    BEGIN
        -- delete  branch with that id 
        DELETE  Branch WHERE BranchID=@BranchID
    END
    ELSE
    BEGIN
        -- Raise an error indicating that branch ID doesn't exists
        RAISERROR('Branch Doesnot Exists.', 16, 1);
    END
END;
go
--##############################################################################################################
--#############################################################################################################
-- Stored Procedures For Student 
CREATE PROCEDURE SelectStudents
with encryption
AS
BEGIN
    SELECT * FROM Student;
END;

go
----------------------------------------------------------------
-- Insert A Student 

