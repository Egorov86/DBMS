USE PV_318_SQL;

SELECT 
    --COUNT(direction_name) 
	--FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL(midle_name,N'')) N'�.�.�.',
	--group_name      AS N'������',
	direction_name     AS N'����������� ��������',
	COUNT(DISTINCT group_id)    AS N'���������� �����',
	COUNT(student_id)  AS N'���������� ���������'
FROM		Groups,Directions,Students
WHERE		direction=direction_id
AND         [group]=group_id
GROUP BY	direction_name
--ORDER BY    group_name
;