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
USE Freshman;
GO

-- CREATE STATEMENTS
-- ALTER TABLE STATEMENTS
-- CREATE VIEW
-- CREATE PROCEDURE

-- CREATE DATABASE STUDENT RECORD KEEPING SYSTEM DATABASE PROJECT --
-- CREATE --

-- 1
CREATE TABLE School
(
	SchoolName		VARCHAR(20)		NOT NULL	CONSTRAINT PKSchoolName PRIMARY KEY,
	PhoneNo			VARCHAR(15)		NULL		CONSTRAINT ValidSchoolPhoneNo CHECK (LEN(PhoneNo) > 1),
	Dli				VARCHAR(15)		NULL		CONSTRAINT ValidSchoolDli CHECK (LEN(Dli) > 1),
	StreetNo		INT				NULL		CONSTRAINT ValidSchoolStreetNo CHECK (LEN(StreetNo) > 1),
	StreetName		VARCHAR(30)		NULL		CONSTRAINT ValidSchoolStreetName CHECK (LEN(StreetName) > 1),
	City			VARCHAR(30)		NULL		CONSTRAINT ValidSchoolCity CHECK (LEN(City) > 1),
	Province		VARCHAR(2)		NULL		CONSTRAINT ValidSchoolProvince CHECK (LEN(Province) > 1),
	PostalCode		VARCHAR(6)		NULL		CONSTRAINT ValidSchoolPostalCode CHECK (LEN(PostalCode) > 1),
);
PRINT 'School table created';
GO

-- SELECT * FROM School

-- 2
CREATE TABLE Instructor
(
	InstructorID	VARCHAR(5)		NOT NULL	CONSTRAINT PKInstructorID PRIMARY KEY,
	FirstName		VARCHAR(20)		NULL		CONSTRAINT ValidInstructorFirstName CHECK (LEN(FirstName) > 1),
	LastName		VARCHAR(30)		NULL		CONSTRAINT ValidInstructorLastName CHECK (LEN(LastName) > 1),
	Specialization	VARCHAR(50)		NULL		CONSTRAINT ValidInstructorSpecialization CHECK (LEN(Specialization) > 1)
);
PRINT 'Instructor table created';
GO

-- SELECT * FROM Instructor
-- SELECT * FROM InstructorBySpecialization

-- 3
CREATE TABLE Student
(
	StudentID		VARCHAR(5)		NOT NULL		CONSTRAINT PKStudentID PRIMARY KEY,
	FirstName		VARCHAR(20)		NULL			CONSTRAINT ValidStudentFirstName CHECK (LEN(FirstName) > 1),
	LastName		VARCHAR(30)		NULL			CONSTRAINT ValidStudentLastName CHECK (LEN(LastName) > 1),
	PhoneNo			VARCHAR(15)		NOT NULL		CONSTRAINT ValidStudentPhoneNo CHECK (LEN(PhoneNo) > 1),
	DateOfBirth		DATE			NULL			CONSTRAINT ValidStudentDateOfBirth CHECK (DateOfBirth > '1900-01-01'),
	Email			VARCHAR(50)		NULL			CONSTRAINT ValidStudentEmail CHECK (LEN(Email) > 1),
	StreetNo		INT				NOT NULL		CONSTRAINT ValidStudentStreetNo CHECK (LEN(StreetNo) > 1),
	StreetName		VARCHAR(30)		NULL			CONSTRAINT ValidStudentStreetName CHECK (LEN(StreetName) > 1),
	City			VARCHAR(30)		NULL			CONSTRAINT ValidStudentCity CHECK (LEN(City) > 1),
	Province		VARCHAR(30)		NULL			CONSTRAINT ValidStudentProvince CHECK (LEN(Province) > 1),
	PostalCode		VARCHAR(6)		NOT NULL		CONSTRAINT ValidStudentPostalCode CHECK (LEN(PostalCode) > 1),
);
PRINT 'Student table created';
GO

-- SELECT * FROM Student
-- SELECT * FROM StudentByLastName

-- 4 
CREATE TABLE Course
(
	CourseID		VARCHAR(20)		NOT NULL	CONSTRAINT PKCourseID PRIMARY KEY,
	InstructorID	VARCHAR(5)		NULL		CONSTRAINT FKCourseInstructorID FOREIGN KEY REFERENCES Instructor(InstructorID),
	SchoolName		VARCHAR(20)		NULL		CONSTRAINT FKSchoolName FOREIGN KEY REFERENCES School(SchoolName),
	CourseName		VARCHAR(50)		NULL		CONSTRAINT ValidCourseCourseName CHECK (LEN(CourseName) > 1),
	Price			DECIMAL(7,2)	NULL		CONSTRAINT ValidCoursePrice CHECK(Price > 0),
	Length			TINYINT			NULL		CONSTRAINT ValidCourseLength CHECK (LEN(Length) > 1),
	Coop			BIT				NULL
);
PRINT 'Course table created';
GO

-- SELECT * FROM Course
-- SELECT * FROM CourseByCourseName

-- 5
CREATE TABLE Grades
(
	GradeID			VARCHAR(20)		NOT NULL	CONSTRAINT PKGradeID PRIMARY KEY,
	StudentID		VARCHAR(5)		NOT NULL	CONSTRAINT FKGradesStudentID FOREIGN KEY REFERENCES Student(StudentID),
	CourseID		VARCHAR(20)		NOT NULL	CONSTRAINT FKGradesCourseID FOREIGN KEY REFERENCES Course(CourseID),
	Attendance		DECIMAL(5,2)	NULL		CONSTRAINT ValidGradesAttendance CHECK(Attendance > 0),
	Quizes			DECIMAL(5,2)	NULL		CONSTRAINT ValidGradesQuizes CHECK(Quizes > 0),
	Project			DECIMAL(5,2)	NULL		CONSTRAINT ValidGradesProject CHECK(Project > 0),
	FinalExam		DECIMAL(5,2)	NULL		CONSTRAINT ValidGradesFinalExam CHECK(FinalExam > 0),
);	
PRINT 'Grades table created';
GO

-- SELECT * FROM Grades

-- 6
CREATE TABLE Finance
(
	PaymentID		VARCHAR(5)		NOT NULL	CONSTRAINT PKPaymentType PRIMARY KEY,
	StudentID		VARCHAR(5)		NULL		CONSTRAINT FKFinanceStudentID FOREIGN KEY REFERENCES Student(StudentID),
	PaymentType		VARCHAR(15)		NULL		CONSTRAINT ValidFinancePaymentType CHECK(LEN(PaymentType) > 3),
	Tuition			DECIMAL(7,2)	NULL		CONSTRAINT ValidFinanceTuition CHECK(Tuition >= 0),
	LateFees		DECIMAL(7,2)	NULL		CONSTRAINT ValidFinanceLateFees CHECK(LateFees >= 0),
	Sales			DECIMAL(7,2)	NULL		CONSTRAINT ValidFinanceSales CHECK(Sales >= 0),
	Scholarship		DECIMAL(7,2)	NULL		CONSTRAINT ValidFinanceScholarship CHECK(Scholarship >= 0),
);
PRINT 'Finance table created';
GO

-- SELECT * FROM Finance
-- SELECT * FROM FinanceByPaymentType
-- SELECT * FROM FinanceByTuition