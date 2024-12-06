USE PD_318_DML;

SELECT 
    --COUNT(direction_name) 
	--FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(midle_name,N'')) N'Ф.И.О.',
	--group_name      AS N'Группа',
	direction_name     AS N'Направление обучения',
	COUNT(group_id)    AS N'Количество групп'
	--COUNT(student_id)  AS N'Количество студентов'
FROM		Groups,Directions
WHERE		direction=direction_id
GROUP BY	direction_name
HAVING      COUNT(group_id) < 3      
;