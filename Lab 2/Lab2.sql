/*CREATE TABLE*/
CREATE TABLE Student (
    StudentID varchar(50),
    Name varchar(50),
    Gender varchar(50),
    DOB date,
    Address varchar(50)
);

SELECT * FROM Student

/*INSERT query*/
INSERT INTO Student VALUES('S01','Ali','Male','2 Feb 1996','Kuala Lumpur')
INSERT INTO Student VALUES('S02','Nancy','Female','15 May 1997','Bukit Jalil')
INSERT INTO Student VALUES('S03','Melvin','Male','20 November 1998','Selangor')