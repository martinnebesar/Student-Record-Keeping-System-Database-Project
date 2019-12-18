INSERT INTO Student(StudentID, FirstName, LastName, PhoneNo, Email, StreetNo, StreetName, City, Province, PostalCode)
VALUES	('994IT','Paul','Young','6479178274','paul.youngda@gmail.com','354','Dublin Ave','South Port','Saskatchewan','Y244T7'),
		('851HO','Ashley','Young','6471985348','ashleyyoungeee@gmail.com','778','Joplin Str','Highbridge','Prince Edward','646466'),
		('954TO','Peter','Goyle','6476547981','petergoyle@gmail.com','654','Brock Island Cres','Westgate','Ontario','QOIULA');

INSERT INTO Student(StudentID, FirstName, LastName, PhoneNo, Email, StreetNo, StreetName, City, Province, PostalCode)
VALUES	('857IT','Laura','Cole','647235986','lauracole@gmail.com','3645','Bayview Ave','Markham','Ontario','789465');
GO
;

INSERT INTO Grades(CourseID, Attendance, Quizes, Project, FinalExam)
VALUES	('689CR', 92, 85, 78, 83),
		('397CX', 89, 91, 88, 86),
		('543NC', 91, 86, 84, 91);

INSERT INTO Grades(CourseID, Attendance, Quizes, Project, FinalExam)
VALUES	('689IN', 100, 94, 96, 97);
GO
;

INSERT INTO Finance(PaymentID, PaymentType, Tuition, LateFees, Sales, Scholarship)
VALUES	('WT001','Wire Transfer', 6000, 0, 0, 0),
		('CS001','Cash', 10000, 0, 1000, 0),
		('CS002','Cash', 11500, 500, 0, 5000);
				
INSERT INTO Finance(PaymentID, PaymentType, Tuition, LateFees, Sales, Scholarship)
VALUES	('WT002', 'Wire Transfer', 10000, 0, 1000, 0);
GO
;

INSERT INTO Course(Course2ID, CourseName, Price, Length, Coop)
VALUES	('689CR', 'Microsoft .NET Developer', 6000, 20, 1),
		('397CX', 'Hospitality', 10000, 26, 1),
		('543NC', 'Travel and Tourism', 11500, 30, 0);
GO
;

INSERT INTO Course(Course2ID, CourseName, Price, Length, Coop)
VALUES	('689IN', 'Network Administrator', 10000, 20, 1);
GO
;

INSERT INTO School(SchoolName, PhoneNo, Dli, StreetNo, StreetName, City, Province, PostalCode)
VALUES ('IBT', '6478049899', 'O469857228347', '247', 'John Street', 'Sarnia', 'ON', 'LWA455');
GO
;