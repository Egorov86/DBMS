--AcademySQL
CREATE DATABASE PV_318_SQL
ON   -- ���������� �������� ����� ���� ������
(
   NAME = PV_318_SQL,
   FILENAME = 'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PV_318_SQL.mdf', 
   SIZE       = 8 MB,
   MAXSIZE    = 500 MB,
   FILEGROWTH = 8 MB
)
LOG ON  --�������� ����� ������� ����������
(
   NAME       = PV_318_SQL_Log,
   FILENAME   = 'D:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PV_318_SQL_Log.ldf',
   SIZE       = 8 MB,
   MAXSIZE    = 500 MB,
   FILEGROWTH = 8 MB
)