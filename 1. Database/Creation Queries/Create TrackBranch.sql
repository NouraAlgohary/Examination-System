create Database ExaminationSystemDB

CREATE TABLE TrackBranch(
TrackID INT,
BranchID INT,

CONSTRAINT Fk_TrackID FOREIGN kEY (TrackID) REFERENCES Track(TrackID),
CONSTRAINT FK_BranchID FOREIGN kEY (BranchID)  REFERENCES Branch(BranchID),
CONSTRAINT PK_TrackBranch PRIMARY kEY (TrackID ,BranchID)
);
