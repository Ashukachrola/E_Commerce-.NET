USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Address_SelectAll]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Address_SelectAll]
AS
SELECT 
[dbo].[Address].[AddressID]
FROM [dbo].[Address]

GO
