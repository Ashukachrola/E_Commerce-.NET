USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Update_Order_Status]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Order_Status]
@UserID		INT
AS
UPDATE [dbo].[Cart]
SET [dbo].[Cart].[isOrderDone] = 1
WHERE [dbo].[Cart].[UserID] = @UserID

GO
