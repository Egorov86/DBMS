USE PV_318_SQL
GO

CREATE TABLE Schedule
(
    lesson_id      INT           PRIMARY KEY IDENTITY(1,1),
	date           DATE          NOT NULL,
	time           TIME          NOT NULL,
	[group]        INT           NOT NULL 
	CONSTRAINT FK_ScheduleGroup        FOREIGN KEY REFERENCES Groups(group_id),
    [discipline]   SMALLINT      NOT NULL
	CONSTRAINT FK_ScheduleDiscipline   FOREIGN KEY REFERENCES Disciplines(discipline_id),
	[teacher]      INT           NOT NULL
	CONSTRAINT FK_ScheduleTeacher      FOREIGN KEY REFERENCES Teachers(teacher_id),
	Spent          BIT           NOT NULL,
	Subject        NVARCHAR(150) NULL
);

CREATE TABLE Grades
(
    student       INT,
	lesson        INT,
	PRIMARY KEY (student, lesson),

	CONSTRAINT  FK_GradesStydent       FOREIGN KEY  (student)  REFERENCES Students (student_id),
	CONSTRAINT  FK_GradesLesson        FOREIGN KEY  (lesson)  REFERENCES Schedule (lesson_id),

	present       BIT            NOT NULL,
	grade_1       INT            NULL,
	grade_2       INT            NULL

);

CREATE TABLE Exam
(
    student       INT,
	lesson        INT,
	PRIMARY KEY (student, lesson),

	CONSTRAINT  FK_ExamStydent       FOREIGN KEY  (student)  REFERENCES Students (student_id),
	CONSTRAINT  FK_ExamLesson        FOREIGN KEY  (lesson)  REFERENCES Schedule (lesson_id),

	grade         INT            NOT NULL
);
GO