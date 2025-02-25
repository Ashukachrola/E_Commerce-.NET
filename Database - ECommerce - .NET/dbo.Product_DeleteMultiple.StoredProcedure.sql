USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Product_DeleteMultiple]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Product_DeleteMultiple]
    @ProductIDs VARCHAR(MAX)
AS
    DECLARE @ProductIdTable TABLE (ProductID INT);

    INSERT INTO @ProductIdTable (ProductID)
    SELECT value
    FROM STRING_SPLIT(@ProductIDs, ',');

	UPDATE [dbo].[MST_Product]

	SET [isActive] = 0	
	
WHERE [dbo].[MST_Product].[ProductID] IN (SELECT ProductID FROM @ProductIdTable);

GO
