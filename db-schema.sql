-- release your database by swithing to another one
USE master;
GO
-- drop your database only if exists
DROP DATABASE IF EXISTS Freshman;
GO
-- create your database
CREATE DATABASE Freshman;
GO

-- select your database
USE Freshman
GO

-- CREATE STATEMENTS
-- ALTER TABLE STATEMENTS
-- CREATE VIEW
-- CREATE PROCEDURE

-- CREATE DATABASE STUDENT RECORD KEEPING SYSTEM DATABASE PROJECT
-- CREATE 

-- CREATE DATABASE STUDENT RECORD KEEPING SYSTEM DATABASE PROJECT --
-- CREATE --

CREATE TABLE Student
(
	StudentID		VARCHAR(5)		NOT NULL		CONSTRAINT StudentID PRIMARY KEY,
	FirstName		VARCHAR(20)		NULL,			CONSTRAINT ValidStudentFirstName CHECK (LEN(FirstName) > 1),
	LastName		VARCHAR(30)		NULL,			CONSTRAINT ValidStudentLastName CHECK (LEN(LastName) > 1),
	PhoneNo			VARCHAR(15)		NOT NULL,		CONSTRAINT ValidStudentPhoneNo CHECK (LEN(PhoneNo) > 1),
	DateOfBirth		DATE			NOT NULL,		CONSTRAINT ValidStudentDateOfBirth CHECK (DateOfBirth > '1900-01-01'),
	Email			VARCHAR(50)		NULL,			CONSTRAINT ValidStudentEmail CHECK (LEN(Email) > 1),
	StreetNo		INT				NOT NULL,		CONSTRAINT ValidStudentStreetNo CHECK (LEN(StreetNo) > 1),
	StreetName		VARCHAR(30)		NULL,			CONSTRAINT ValidStudentStreetName CHECK (LEN(StreetName) > 1),
	City			VARCHAR(30)		NULL,			CONSTRAINT ValidStudentCity CHECK (LEN(City) > 1),
	Province		VARCHAR(30)		NULL,			CONSTRAINT ValidStudentProvince CHECK (LEN(Province) > 1),
	PostalCode		VARCHAR(6)		NOT NULL		CONSTRAINT ValidStudentPostalCode CHECK (LEN(PostalCode) > 1),
);
GO
DELETE FROM Student WHERE StudentId = '994IT' -- for example '851HO'

CREATE VIEW StudentByLastName
AS
	SELECT StudentID, FirstName, LastName, PhoneNo,
			UPPER(LastName) AS UpperLastName
	FROM	Student
	WHERE	LastName = 'Young'

-- SELECT * FROM Student
-- SELECT * FROM StudentByLastName

CREATE TABLE Grades
(
	CourseID		VARCHAR(20)		NOT NULL	CONSTRAINT CourseID PRIMARY KEY,
	Attendance		DECIMAL(5,2)	NULL,		CONSTRAINT ValidGradesAttendance CHECK(Attendance > 0),
	Quizes			DECIMAL(5,2)	NULL,		CONSTRAINT ValidGradesQuizes CHECK(Quizes > 0),
	Project			DECIMAL(5,2)	NULL,		CONSTRAINT ValidGradesProject CHECK(Project > 0),
	FinalExam		DECIMAL(5,2)	NULL		CONSTRAINT ValidGradesFinalExam CHECK(FinalExam > 0),
);
GO

-- SELECT * FROM Grades

CREATE TABLE Finance
(
	PaymentID		VARCHAR(5)		NOT NULL	CONSTRAINT PaymentType PRIMARY KEY,
	PaymentType		VARCHAR(15)		NULL,		CONSTRAINT ValidFinancePaymentType CHECK(LEN(PaymentType) > 3),
	Tuition			DECIMAL(7,2)	NULL,		CONSTRAINT ValidFinanceTuition CHECK(Tuition > 0),
	LateFees		DECIMAL(7,2)	NULL,		CONSTRAINT ValidFinanceLateFees CHECK(LateFees > 0),
	Sales			DECIMAL(7,2)	NULL,		CONSTRAINT ValidFinanceSales CHECK(Sales > 0),
	Scholarship		DECIMAL(7,2)	NULL		CONSTRAINT ValidFinanceScholarship CHECK(Scholarship > 0),
);
GO

DELETE FROM Finance WHERE PaymentID = 'CS002' -- for example 'CS002'

CREATE VIEW FinanceByPaymentType
AS
	SELECT	PaymentType, Tuition, LateFees, Sales, Scholarship,
			UPPER(PaymentType) AS UpperPaymentType
	FROM	Finance
	WHERE	PaymentType = 'Cash'

CREATE VIEW FinanceByTuitionPaid
AS
	SELECT PaymentType, Tuition, LateFees, Sales, Scholarship
	


-- SELECT * FROM Finance
-- SELECT * FROM FinanceByPaymentType

CREATE TABLE Course
(
	Course2ID		VARCHAR(20)		NOT NULL	CONSTRAINT Course2ID	PRIMARY KEY,
	CourseName		VARCHAR(50)		NULL,		CONSTRAINT ValidCourseCourseName CHECK (LEN(CourseName) > 1),
	Price			DECIMAL(7,2)	NULL,		CONSTRAINT ValidCoursePrice CHECK(Price > 0),
	Length			TINYINT			NULL,		CONSTRAINT ValidCourseLength CHECK (LEN(Length) > 1),
	Coop			BIT				NULL		CONSTRAINT ValidCourseCoop CHECK (LEN(Coop) > 1),
);
GO

DELETE FROM Course WHERE CourseID = '' -- for example '397CX'

CREATE VIEW CourseByCourseName
AS
	SELECT	Course2ID, CourseName, Price, Length, Coop,
			UPPER(CourseName) AS UpperCourseName
	FROM	Course
	WHERE	CourseName = 'Network Administrator'

-- SELECT * FROM Course
-- SELECT * FROM CourseByCourseName

CREATE TABLE School
(
	SchoolName		VARCHAR(20)		NOT NULL	CONSTRAINT SchoolName PRIMARY KEY,
	PhoneNo			VARCHAR(15)		NULL,		CONSTRAINT ValidSchoolPhoneNo CHECK (LEN(PhoneNo) > 1),
	Dli				VARCHAR(15)		NULL,		CONSTRAINT ValidSchoolDli CHECK (LEN(Dli) > 1),
	StreetNo		INT				NULL,		CONSTRAINT ValidSchoolStreetNo CHECK (LEN(StreetNo) > 1),
	StreetName		VARCHAR(30)		NULL,		CONSTRAINT ValidSchoolStreetName CHECK (LEN(StreetName) > 1),
	City			VARCHAR(30)		NULL,		CONSTRAINT ValidSchoolCity CHECK (LEN(City) > 1),
	Province		VARCHAR(2)		NULL,		CONSTRAINT ValidSchoolProvince CHECK (LEN(Province) > 1),
	PostalCode		VARCHAR(6)		NULL		CONSTRAINT ValidSchoolPostalCode CHECK (LEN(PostalCode) > 1),
);
GO
PRINT 'School Table Dropped'

INSERT INTO School(SchoolName, PhoneNo, Dli, StreetNo, StreetName, City, Province, PostalCode)
VALUES ('IBT', '6478049899', 'O469857228347', '247', 'John Street', 'Sarnia', 'ON', 'LWA455');

-- SELECT * FROM School

CREATE TABLE Instructor
(
	InstructorID	VARCHAR(5)		NOT NULL	CONSTRAINT InstructorID PRIMARY KEY,
	FirstName		VARCHAR(20)		NULL,		CONSTRAINT ValidInstructorFirstName CHECK (LEN(FirstName) > 1)
	LastName		VARCHAR(30)		NULL,		CONSTRAINT ValidInstructorLastName CHECK (LEN(LastName) > 1)
	Specialization	VARCHAR(50)		NULL		CONSTRAINT ValidInstructorSpecialization CHECK (LEN(Specialization) > 1)
);
GO
SELECT * FROM Instructor