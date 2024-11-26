USE PV_318_SQL;
GO

CREATE TABLE Disciplines
(
     discipline_id       SMALLINT      PRIMARY KEY,
	 discipline_name     NVARCHAR(256) NOT NULL,
	 number_of_lessons   SMALLINT      NOT NULL
);

CREATE TABLE RequiredDisciplines
(
     discipline          SMALLINT,
	 required_discipline SMALLINT,
	 PRIMARY KEY (discipline, required_discipline),

	 CONSTRAINT FK_RD_TergetDiscipline_2_Disciplines 
	 FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id),

	 CONSTRAINT FK_RD_RequiredDiscipline_2_Disciplines
	 FOREIGN KEY (required_discipline) REFERENCES Disciplines(discipline_id)

);


CREATE TABLE DependentDisciplines
(
     discipline                SMALLINT,
	 dependent_discipline      SMALLINT,
	 PRIMARY KEY (discipline, dependent_discipline),

	 CONSTRAINT FK_RD_TargetDiscipline_2_Disciplines
	 FOREIGN KEY (discipline) REFERENCES Disciplines(discipline_id),

	 CONSTRAINT FK_RD_DependentDiscipline_2_Disciplines
	 FOREIGN KEY (dependent_discipline) REFERENCES Disciplines(discipline_id)
);

USE PV_318_SQL;
GO

--DROP TABLE TeachersDisciplinesRelation;
--DROP TABLE DirectionsDisciplinesRelation;
--DROP TABLE DirectionsDisciplinesRelation;

--PJT   -  Pure JOIN Table (Для связи 'Многие ко Многим')
CREATE TABLE TeachersDisciplinesRelation
(
    teacher         INT,
	discipline      SMALLINT,
	PRIMARY KEY(teacher, discipline),

	CONSTRAINT  FK_TDR_Teacher    FOREIGN KEY (teacher)    REFERENCES Teachers    (teacher_id),
	CONSTRAINT  FK_TDR_Discipline FOREIGN KEY (discipline) REFERENCES Disciplines (discipline_id)	
);

CREATE TABLE DirectionsDisciplinesRelation
(
    direction      TINYINT,
	discipline     SMALLINT,
	PRIMARY KEY(direction, discipline),
	CONSTRAINT  FK_DDR_Direction FOREIGN KEY  (direction)  REFERENCES Directions (direction_id),
	CONSTRAINT  FK_DDR_Discipline FOREIGN KEY (discipline) REFERENCES Disciplines (discipline_id)	
);

CREATE TABLE CompleteDisciplines
(
    [group]         INT,
	discipline      SMALLINT,
	PRIMARY KEY([group], discipline),
	CONSTRAINT  FK_CD_Group      FOREIGN KEY ([group])    REFERENCES Groups (group_id),
	CONSTRAINT  FK_CD_Discipline FOREIGN KEY (discipline) REFERENCES Disciplines (discipline_id)	
);