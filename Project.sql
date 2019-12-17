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
		('851HO','Ashley','Young','6471985348','ashleyyoungeee@gmail.com','778','Joplin Str','Highbridge','Prince Edward','646466'),
		('954TO','Peter','Goyle','6476547981','petergoyle@gmail.com','654','Brock Island Cres','Westgate','Ontario','QOIULA');

INSERT INTO Student(StudentID, FirstName, LastName, PhoneNo, Email, StreetNo, StreetName, City, Province, PostalCode)
VALUES	('857IT','Laura','Cole','647235986','lauracole@gmail.com','3645','Bayview Ave','Markham','Ontario','789465');

DELETE FROM Student WHERE StudentId = '994IT' -- for example '851HO'

DROP VIEW if EXISTS StudentByLastName 
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
	Attendance		DECIMAL(5,2)	NULL,
	Quizes			DECIMAL(5,2)	NULL,
	Project			DECIMAL(5,2)	NULL,
	FinalExam		DECIMAL(5,2)	NULL
);
GO

INSERT INTO Grades(CourseID, Attendance, Quizes, Project, FinalExam)
VALUES	('689CR', 92, 85, 78, 83),
		('397CX', 89, 91, 88, 86),
		('543NC', 91, 86, 84, 91);

INSERT INTO Grades(CourseID, Attendance, Quizes, Project, FinalExam)
VALUES	('689IN', 100, 94, 96, 97);

-- SELECT * FROM Grades

DROP TABLE IF Exists Finance
CREATE TABLE Finance
(
	PaymentID		VARCHAR(5)		NOT NULL	CONSTRAINT PaymentType PRIMARY KEY,
	PaymentType		VARCHAR(15)		NULL,		CONSTRAINT ValidPaymentType CHECK(LEN(PaymentType) > 3),
	Tuition			DECIMAL(7,2)	NULL,		CONSTRAINT ValidTuition CHECK(Tuition > 0),
	LateFees		DECIMAL(7,2)	NULL,		CONSTRAINT ValidLateFees CHECK(LateFees > 0),
	Sales			DECIMAL(7,2)	NULL,		CONSTRAINT ValidSales CHECK(Sales > 0),
	Scholarship		DECIMAL(7,2)	NULL		CONSTRAINT ValidScholarship CHECK(Scholarship > 0),
);
GO

INSERT INTO Finance(PaymentID, PaymentType, Tuition, LateFees, Sales, Scholarship)
VALUES	('WT001','Wire Transfer', 6000, 0, 0, 0),
		('CS001','Cash', 10000, 0, 1000, 0),
		('CS002','Cash', 11500, 500, 0, 5000);
				
INSERT INTO Finance(PaymentID, PaymentType, Tuition, LateFees, Sales, Scholarship)
VALUES	('WT002', 'Wire Transfer', 10000, 0, 1000, 0);
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
	Price			DECIMAL(7,2)	NULL,
	Length			TINYINT			NULL,
	Coop			BIT				NULL
);
GO

INSERT INTO Course(Course2ID, CourseName, Price, Length, Coop)
VALUES	('689CR', 'Microsoft .NET Developer', 6000, 20, 1),
		('397CX', 'Hospitality', 10000, 26, 1),
		('543NC', 'Travel and Tourism', 11500, 30, 0);
GO

INSERT INTO Course(Course2ID, CourseName, Price, Length, Coop)
VALUES	('689IN', 'Network Administrator', 10000, 20, 1);
GO
;

DELETE FROM Course WHERE CourseID = '' -- for example '397CX'

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
DROP TABLE IF Exists School
INSERT INTO School(SchoolName, PhoneNo, Dli, StreetNo, StreetName, City, Province, PostalCode)
VALUES ('IBT', '6478049899', 'O469857228347', '247', 'John Street', 'Sarnia', 'ON', 'LWA455');

-- SELECT * FROM School

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