USE PV_318_SQL;

SELECT 
    --COUNT(direction_name) 
	--group_name      AS N'Группа',
	direction_name  AS N'Направление обучения',
	COUNT(group_id) AS N'Количество групп'
FROM		Groups,Directions
WHERE		direction=direction_id
GROUP BY	direction_name
;