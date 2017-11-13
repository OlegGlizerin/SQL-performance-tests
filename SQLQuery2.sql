USE [olegdb]
GO
DECLARE @return_value Int
EXEC @return_value = [dbo].[selectAllDataFromLibrary]
GO