USE PD_318_DML;

SELECT
       [�.�.�.]                =    FORMATMESSAGE('%s %s %s', last_name,first_name, ISNULL(middle_name, N'')),
	   [���������� ���������]  =    COUNT(Discipline_name)
FROM  Teachers,Disciplines,TeachersDisciplinesRelation
WHERE discipline			= discipline_id
AND   teacher				= teacher_id

Group BY    
          last_name, first_name,middle_name
ORDER BY  [���������� ���������] DESC
      --last_name ASC