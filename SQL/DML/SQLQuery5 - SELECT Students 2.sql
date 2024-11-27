USE PV_318_SQL;

SELECT 
        --last_name + ' '+ first_name +' '+ midle_name AS N'Ф.И.О.',
      --[Ф.И.О.] = FORMATMESSAGE(IIF(midle_name IS NULL, N'%s %s', N'%s %s %s'), last_name, first_name, midle_name),
	    [Ф.И.О.] = FORMATMESSAGE( N'%s %s %s', last_name, first_name, ISNULL(midle_name, N'')),
 		birth_date        AS N'Дата рождения',
        [Возраст]         = DATEDIFF(DAY, birth_date, GETDATE() )/365,
		[group_name]      AS N'Группа',
		direction_name    AS N'Направление обучения'
FROM    Students, Groups, Directions
WHERE   Students.[group]=Groups.group_id
AND     Groups.direction=Directions.direction_id
--AND     group_name=N'PD_321';
--AND     direction_name=N'Компьютерная графика и дизайн'
AND     direction_name LIKE N'%графика%'
--ORDER BY birth_date DESC;
ORDER BY [Возраст] DESC