USE PD_318_DML;

SELECT 
       [Дисциплина]         = discipline_name,
	   [Количество преподавателей] = COUNT(teacher_id)
FROM Teachers,Disciplines,TeachersDisciplinesRelation
WHERE teacher				= teacher_id
AND   discipline			= discipline_id
Group BY
      discipline_name
ORDER BY 
      [Количество преподавателей] DESC
;