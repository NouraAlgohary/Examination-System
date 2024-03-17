CREATE TABLE TrackInstructor(

InstructorID INT,
TrackID INT,

CONSTRAINT FK_InstructorID1 FOREIGN kEY (InstructorID)  REFERENCES Instructor(InstructorID),
CONSTRAINT Fk_TrackID1 FOREIGN kEY (TrackID) REFERENCES Track(TrackID),
CONSTRAINT PK_TrackInstructor PRIMARY kEY (InstructorID ,TrackID)

);