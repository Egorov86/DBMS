USE PD_318_DML;
GO

--ALTER TABLE Holidays
--ADD duration    TINYINT
--;

UPDATE Holidays 
SET    duration=14
WHERE  holiday_name LIKE N'%Каникулы%';
GO

UPDATE Holidays
SET    holiday_name=N'Летние каникулы'
WHERE  holiday_name LIKE N'Каникулы'  

SELECT * FROM Holidays;
