-- CREATE DATABASE STUDENT RECORD KEEPING SYSTEM DATABASE PROJECT --
-- CREATE --

DROP TABLE IF Exists Student
CREATE TABLE Student
(
	StudentID		VARCHAR(5)		NOT NULL	CONSTRAINT StudentID PRIMARY KEY,
	FirstName		VARCHAR(20)		NULL,
	LastName		VARCHAR(30)		NULL,
	PhoneNo			VARCHAR(15)		NULL,
	Email			VARCHAR(50)		NULL,
	StreetNo		INT				NULL,
	StreetName		VARCHAR(30)		NULL,
	City			VARCHAR(30)		NULL,
	Province		VARCHAR(30)		NULL,
	PostalCode		VARCHAR(6)		NULL
);
GO

INSERT INTO Student(StudentID, FirstName, LastName, PhoneNo, Email, StreetNo, StreetName, City, Province, PostalCode)
VALUES	('994IT','Paul','Young','6479178274','paul.youngda@gmail.com','354','Dublin Ave','South Port','Saskatchewan','Y244T7'),
		('851IT','Ashley','Young','6471985348','ashleyyoungeee@gmail.com','778','Joplin Str','Highbridge','Prince Edward','646466'),
		('954IT','Peter','Goyle','6476547981','petergoyle@gmail.com','654','Brock Island Cres','Westgate','Ontario','QOIULA');

INSERT INTO Student(StudentID, FirstName, LastName, PhoneNo, Email, StreetNo, StreetName, City, Province, PostalCode)
VALUES	('857IT','Laura','Cole','647235986','lauracole@gmail.com','3645','Bayview Ave','Markham','Ontario','789465');

DELETE FROM Student WHERE StudentId = '' -- for example '857IT'

CREATE VIEW StudentByLastName
AS
	SELECT StudentID, FirstName, LastName, PhoneNo,
			UPPER(LastName) AS UpperLastName
	FROM	Student
	WHERE	LastName = 'Young'

-- SELECT * FROM Student
-- SELECT * FROM StudentByLastName

DROP TABLE IF Exists Grades
CREATE TABLE Grades
(
	CourseID		VARCHAR(20)		NOT NULL	CONSTRAINT CourseID PRIMARY KEY,
	Attendance		DECIMAL(3,2)	NULL,
	Quizes			DECIMAL(3,2)	NULL,
	Project			DECIMAL(3,2)	NULL,
	FinalExam		DECIMAL(3,2)	NULL
);
GO

INSERT INTO Grades(CourseID, Attendance, Quizes, Project, FinalExam)
VALUES ('', , , , )

SELECT * FROM Grades

DROP TABLE IF Exists Finance
CREATE TABLE Finance
(
	PaymentID		VARCHAR(5)		NOT NULL	CONSTRAINT PaymentType PRIMARY KEY,
	PaymentType		VARCHAR(15)		NULL,	
	Tuition			DECIMAL(5,2)	NULL,
	LateFees		DECIMAL(5,2)	NULL,
	Sales			DECIMAL(4,2)	NULL,
	Scholarship		DECIMAL(5,2)	NULL
);
GO

INSERT INTO Finance(PaymentID, PaymentType, Tuition, LateFees, Sales, Scholarship)
VALUES	('WT001','Wire Transfer', 6.000, 0, 0, 0),
		('CS001','Cash', 10.000, 0, 1.000, 0),
		('CS002','Cash', 11.500, 500, 0, 5.000);
		
GO

DELETE FROM Finance WHERE PaymentID = 'CS002' -- for example 'Cash'

CREATE VIEW FinanceByPaymentType
AS
	SELECT	PaymentType, Tuition, LateFees, Sales, Scholarship,
			UPPER(PaymentType) AS UpperPaymentType
	FROM	Finance
	WHERE	PaymentType = 'Cash'

-- SELECT * FROM Finance
-- SELECT * FROM FinanceByPaymentType

DROP TABLE IF Exists Course
CREATE TABLE Course
(
	Course2ID		VARCHAR(20)		NOT NULL	CONSTRAINT Course2ID	PRIMARY KEY,
	CourseName		VARCHAR(50)		NULL,
	Price			DECIMAL(5,2)	NULL,
	Length			TINYINT			NULL,
	Coop			BIT				NULL
);
GO

INSERT INTO Course(Course2ID, CourseName, Price, Length, Coop)
VALUES	('689CR', 'Microsoft .NET Developer', 6.000, 20, 1),
		('397CX', 'Network Administrator', 10.000, 26, 1),
		('543NC', 'Travel and Tourism', 11.500, 30, 0);

GO

CREATE VIEW CourseByCourseName
AS
	SELECT	Course2ID, CourseName, Price, Length, Coop,
			UPPER(CourseName) AS UpperCourseName
	FROM	Course
	WHERE	CourseName = 'Network Administrator'

-- SELECT * FROM Course
-- SELECT * FROM CourseByCourseName

DROP TABLE IF Exists School
CREATE TABLE School
(
	SchoolName		VARCHAR(20)		NOT NULL	CONSTRAINT SchoolName PRIMARY KEY,
	PhoneNo			VARCHAR(15)		NULL,
	Dli				VARCHAR(15)		NULL,
	StreetNo		INT				NULL,
	StreetName		VARCHAR(30)		NULL,
	City			VARCHAR(30)		NULL,
	Province		VARCHAR(2)		NULL,
	PostalCode		VARCHAR(6)		NULL
);
GO
SELECT * FROM School

DROP TABLE IF Exists Instructor
CREATE TABLE Instructor
(
	InstructorID	VARCHAR(5)		NOT NULL	CONSTRAINT InstructorID PRIMARY KEY,
	FirstName		VARCHAR(20)		NULL,
	LastName		VARCHAR(30)		NULL,
	Specialization	VARCHAR(50)		NULL
);
GO
SELECT * FROM Instructor