USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Increment_Quantity]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Increment_Quantity]
@ProductID		INT
AS
UPDATE [dbo].[Cart]
SET [Quantity] = [Quantity] + 1
WHERE [dbo].[Cart].[ProductID] = @ProductID

GO
