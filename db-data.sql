-- 1
INSERT INTO School(SchoolName, PhoneNo, Dli, StreetNo, StreetName, City, Province, PostalCode)
VALUES ('IBT', '6478049899', 'O469857228347', '247', 'John Street', 'Sarnia', 'ON', 'LWA455');
GO
;

-- 2
INSERT INTO Instructor(InstructorID, FirstName, LastName, Specialization)
VALUES ('001IT', 'Ed', 'Taylor', 'IT');
GO
;

-- 3
INSERT INTO Student(StudentID, FirstName, LastName, PhoneNo, DateOfBirth, Email, StreetNo, StreetName, City, Province, PostalCode)
VALUES	('994IT','Paul','Young','6479178274','1984-04-05','paul.youngda@gmail.com','354','Dublin Ave','South Port','Saskatchewan','Y244T7'),
		('851HO','Ashley','Young','6471985348','1991-02-04','ashleyyoungeee@gmail.com','778','Joplin Str','Highbridge','Prince Edward','646466'),
		('954TO','Peter','Goyle','6476547981','1992-12-04','petergoyle@gmail.com','654','Brock Island Cres','Westgate','Ontario','QOIULA');

INSERT INTO Student(StudentID, FirstName, LastName, PhoneNo, DateOfBirth, Email, StreetNo, StreetName, City, Province, PostalCode)
VALUES	('857IT','Laura','Cole','647235986','1986-06-08','lauracole@gmail.com','3645','Bayview Ave','Markham','Ontario','789465');
GO
;

--4
INSERT INTO Course(CourseID, CourseName, Price, Length, Coop)
VALUES	('689CR', 'Microsoft .NET Developer', 6000, 20, 1),
		('397CX', 'Hospitality', 10000, 26, 1),
		('543NC', 'Travel and Tourism', 11500, 30, 0);
GO
;

INSERT INTO Course(CourseID, CourseName, Price, Length, Coop)
VALUES	('689IN', 'Network Administrator', 10000, 20, 1);		
GO
;

-- 5
INSERT INTO Grades(GradeID, StudentID, CourseID, Attendance, Quizes, Project, FinalExam)
VALUES	('001GR', '994IT', '689CR', 92, 85, 78, 83),
		('002GR', '851HO', '397CX', 89, 91, 88, 86),
		('003GR', '954TO', '543NC', 91, 86, 84, 91)
GO
;

INSERT INTO Grades(GradeID, StudentID, CourseID, Attendance, Quizes, Project, FinalExam)
VALUES	('004GR', '857IT', '689IN', 100, 94, 96, 97)
GO
;

-- 6
INSERT INTO Finance(PaymentID, PaymentType, Tuition, LateFees, Sales, Scholarship)
VALUES	('WT001','Wire Transfer', 6000, 0, 0, 0),
		('CS001','Cash', 10000, 0, 1000, 0),
		('CS002','Cash', 11500, 500, 0, 5000)
GO
;
				
INSERT INTO Finance(PaymentID, PaymentType, Tuition, LateFees, Sales, Scholarship)
VALUES	('WT002', 'Wire Transfer', 10000, 0, 1000, 0);
GO
;