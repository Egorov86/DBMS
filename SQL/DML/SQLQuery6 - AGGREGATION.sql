USE PV_318_SQL;

SELECT 
    --COUNT(direction_name) 
	--group_name      AS N'������',
	direction_name  AS N'����������� ��������',
	COUNT(group_id) AS N'���������� �����'
FROM		Groups,Directions
WHERE		direction=direction_id
GROUP BY	direction_name
;