USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Cart_SelectCartID]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Cart_SelectCartID]
@ProductID			INT
AS 

SELECT
		[dbo].[Cart].[ProductID]
FROM	[dbo].[Cart]
WHERE	[dbo].[Cart].[ProductID] = @ProductID AND [dbo].[Cart].[isOrderDone] = 0

GO
