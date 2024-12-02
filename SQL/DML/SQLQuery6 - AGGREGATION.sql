USE PV_318_SQL;

SELECT 
    --COUNT(direction_name) 
	--FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(midle_name,N'')) N'Ф.И.О.',
	--group_name      AS N'Группа',
	direction_name     AS N'Направление обучения',
	COUNT(DISTINCT group_id)    AS N'Количество групп',
	COUNT(student_id)  AS N'Количество студентов'
FROM		Groups,Directions,Students
WHERE		direction=direction_id
AND         [group]=group_id
GROUP BY	direction_name
--ORDER BY    group_name
;