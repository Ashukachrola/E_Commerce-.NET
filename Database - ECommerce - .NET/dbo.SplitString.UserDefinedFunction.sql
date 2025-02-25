USE [ECommerce]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[SplitString]
(
    @String NVARCHAR(MAX),
    @Delimiter CHAR(1)
)
RETURNS @Result TABLE (Value NVARCHAR(MAX))
AS
BEGIN
    DECLARE @Value NVARCHAR(MAX);

    WHILE CHARINDEX(@Delimiter, @String) > 0
    BEGIN
        SET @Value = SUBSTRING(@String, 1, CHARINDEX(@Delimiter, @String) - 1);
        INSERT INTO @Result (Value) VALUES (@Value);
        SET @String = SUBSTRING(@String, CHARINDEX(@Delimiter, @String) + 1, LEN(@String));
    END

    IF LEN(@String) > 0
        INSERT INTO @Result (Value) VALUES (@String);

    RETURN;
END;

GO
