USE PD_318_DML;

SELECT 
        --last_name + ' '+ first_name +' '+ midle_name AS N'�.�.�.',
      --[�.�.�.] = FORMATMESSAGE(IIF(midle_name IS NULL, N'%s %s', N'%s %s %s'), last_name, first_name, midle_name),
	    [�.�.�.] = FORMATMESSAGE( N'%s %s %s', last_name, first_name, ISNULL(middle_name, N'')),
 		birth_date        AS N'���� ��������',
        [�������]         = DATEDIFF(DAY, birth_date, GETDATE() )/365,
		[group_name]      AS N'������',
		direction_name    AS N'����������� ��������'
FROM    Students, Groups, Directions
WHERE   Students.[group]=Groups.group_id
AND     Groups.direction=Directions.direction_id
--AND     group_name=N'PD_321';
--AND     direction_name=N'������������ ������� � ������'
--AND     direction_name LIKE N'%�������%'
--ORDER BY birth_date DESC;
ORDER BY [�������] DESC