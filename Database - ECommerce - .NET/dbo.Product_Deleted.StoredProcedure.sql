USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Product_Deleted]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Deleted]
AS

SELECT	[dbo].[MST_Product].[ProductID], 
		[dbo].[MST_Product].[ProductName], 
		[dbo].[MST_Product].[Discription], 
		[dbo].[MST_Product].[Price],
		[dbo].[MST_Product].[Code],
		[dbo].[MST_Product].[DisplayImage],
		[dbo].[MST_Product].[isActive],
		[dbo].[MST_Product].[Discount],
		[dbo].[MST_Product].[Rating],
		[dbo].[MST_Product].[Created],
		[dbo].[MST_Product].[Modified],
		[dbo].[Category].[CategoryID],
		[dbo].[Category].[CategoryName]

FROM [dbo].[MST_Product] 
INNER JOIN [dbo].[Category]
ON [dbo].[MST_Product].[CategoryID] = [dbo].[Category].[CategoryID]

Where [dbo].[MST_Product].[isActive] = 0

ORDER BY [dbo].[MST_Product].[ProductName]

GO
