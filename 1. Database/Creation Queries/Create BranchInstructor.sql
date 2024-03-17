CREATE TABLE BranchInstructor(
BranchID INT,
InstructorID INT,

CONSTRAINT Fk_BranchID FOREIGN kEY (BranchID) REFERENCES Branch(BranchID),
CONSTRAINT FK_InstructorID FOREIGN kEY (InstructorID)  REFERENCES Instructor(InstructorID),
CONSTRAINT PK_BranchInstructor PRIMARY kEY (BranchID,InstructorID)
);