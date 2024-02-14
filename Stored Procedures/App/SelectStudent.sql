USE [ExaminationSystemDB]
GO
/****** Object:  StoredProcedure [dbo].[SelectStudent]    Script Date: 2/14/2024 10:44:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[SelectStudent] @StudentID INT 
as
BEGIN

SELECT FirstName,LastName,Age,Gender,Phone,Location,Faculty,GraduationYear,Email,B.BranchLocation,T.TrackName FROM Student S
inner join Branch B  ON S.BranchID=B.BranchID
inner join Track T on S.TrackID=T.TrackID
Where StudentID=@StudentID

END

