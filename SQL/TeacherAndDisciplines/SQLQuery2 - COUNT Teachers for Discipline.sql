USE PD_318_DML;

SELECT 
       [����������]         = discipline_name,
	   [���������� ��������������] = COUNT(teacher_id)
FROM Teachers,Disciplines,TeachersDisciplinesRelation
WHERE teacher				= teacher_id
AND   discipline			= discipline_id
Group BY
      discipline_name
ORDER BY 
      [���������� ��������������] DESC
;