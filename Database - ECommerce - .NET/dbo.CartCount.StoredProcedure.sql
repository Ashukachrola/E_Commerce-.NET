USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[CartCount]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CartCount]
@UserID		INT
AS
SELECT
COUNT([dbo].[Cart].[CartID]) AS TotalCartItems
FROM [dbo].[Cart]
WHERE [dbo].[Cart].[UserID] = @UserID AND [dbo].[Cart].[isOrderDone] = 0 AND [dbo].[Cart].[Quantity] > 0

GO
