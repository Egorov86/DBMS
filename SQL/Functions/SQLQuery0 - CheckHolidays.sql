USE PD_318_DML
GO

SET DATEFIRST 1;
--DELETE FROM DaysOFF;

EXEC sp_NewYearDaysFor 2024;
EXEC sp_MayHoliDaysFor 2024;
SELECT 
     [date],
	 DATENAME(WEEKDAY, [date])
--FROM DaysOFF, Holidays
--WHERE holiday=holiday_id
FROM DaysOFF JOIN Holidays ON (holiday = holiday_id)
;