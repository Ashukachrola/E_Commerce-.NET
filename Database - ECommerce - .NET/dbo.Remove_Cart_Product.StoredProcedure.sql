USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Remove_Cart_Product]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Remove_Cart_Product]
@ProductID	INT
AS
DELETE FROM [dbo].[Cart]
WHERE [dbo].[Cart].[ProductID] = @ProductID

GO
