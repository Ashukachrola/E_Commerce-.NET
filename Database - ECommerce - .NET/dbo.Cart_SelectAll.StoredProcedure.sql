USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Cart_SelectAll]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cart_SelectAll]
@UserID		INT
AS
DECLARE @CartTotal int
SELECT @CartTotal = SUM([dbo].[MST_Product].[Price] * [dbo].[Cart].[Quantity])
FROM [dbo].[MST_Product]
INNER JOIN [dbo].[Cart] ON [dbo].[Cart].[ProductID] = [dbo].[MST_Product].[ProductID]
WHERE [dbo].[Cart].[UserID] = @UserID AND [dbo].[Cart].[isOrderDone] = 0

SELECT
@CartTotal as CartTotal,
[dbo].[Cart].[CartID],
[dbo].[MST_Product].[ProductID],
[dbo].[MST_Product].[DisplayImage],
[dbo].[MST_Product].[ProductName],
[dbo].[MST_Product].[Price],
[dbo].[Cart].[Quantity]
FROM [dbo].[Cart]
INNER JOIN [dbo].[MST_Product]
ON [dbo].[MST_Product].[ProductID] = [dbo].[Cart].[ProductID]
WHERE [dbo].[Cart].[UserID] = @UserID AND [dbo].[Cart].[isOrderDone] = 0 AND [dbo].[Cart].[Quantity] > 0


GO
