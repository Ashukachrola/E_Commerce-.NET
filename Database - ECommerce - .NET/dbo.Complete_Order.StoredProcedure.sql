USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Complete_Order]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Complete_Order]
@OrderID	int

AS
UPDATE [dbo].[Order]

SET [isCompleted] = 1,
	[OrderStatus] = 'Completed',
	[Completed] = GETDATE()
	
WHERE [dbo].[Order].[OrderID] = @OrderID

GO
