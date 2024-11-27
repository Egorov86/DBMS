USE PV_318_SQL;

--SELECT * FROM Students;
--       * - все поля

SELECT 
        last_name  AS N'Фамилия',
		first_name AS N'Имя',
		midle_name AS N'Отчество',
		birth_date AS N'Дата рождения'
FROM    Students;