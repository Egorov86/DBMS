USE PD_318_DML;
GO

SET DATEFIRST 1;

EXEC sp_NewYearDays 2024;
--INSERT  
--        DaysOFF([date], holiday)
--VALUES
--        ('2024-01-01', 1),

--SELECT * FROM Holidays;
--PRINT(DATENAME(WEEKDAY, '2025-01-01'));
--PRINT(DATEPART(WEEKDAY, '2024-12-31'));
--PRINT(DATEADD(DAY, DATEPART(WEEKDAY, '2024-12-31')*(-1)+1, '2024-12-31'));
--PRINT(dbo.GetLastMonOfYear(2023));
--PRINT(dbo.GetLastMonOfApril(2024));
--PRINT(dbo.GetLastMonOfJuly(2024));