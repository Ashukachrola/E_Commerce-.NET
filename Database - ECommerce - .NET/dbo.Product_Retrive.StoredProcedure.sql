USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Product_Retrive]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Retrive]
@ProductID	int

AS
UPDATE [dbo].[MST_Product]

SET [isActive] = 1	
	
WHERE [dbo].[MST_Product].[ProductID] = @ProductID

GO
