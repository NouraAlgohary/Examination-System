
---Query for update TrackID for every StudentID
UPDATE Student
SET TrackID = 2
WHERE StudentID BETWEEN 1 AND 100;

-----------------------------------
UPDATE Student
SET TrackID = 3
WHERE StudentID BETWEEN 101 AND 250;
------------------------------------
UPDATE Student
SET TrackID = 6
WHERE StudentID BETWEEN 251 AND 300;
------------------------------------
UPDATE Student
SET TrackID = 4
WHERE StudentID BETWEEN 301 AND 600;
------------------------------------
UPDATE Student
SET TrackID = 1
WHERE StudentID BETWEEN 601 AND 672;
-----------------------------------
UPDATE Student
SET TrackID = 5
WHERE StudentID BETWEEN 673 AND 800;
-----------------------------------
UPDATE Student
SET TrackID = 7
WHERE StudentID BETWEEN 801 AND 983;