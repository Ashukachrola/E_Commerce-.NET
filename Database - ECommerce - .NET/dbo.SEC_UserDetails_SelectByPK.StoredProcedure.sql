USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[SEC_UserDetails_SelectByPK]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SEC_UserDetails_SelectByPK]
@UserID INT
AS
SELECT
[dbo].[SEC_User].[UserID],
[dbo].[SEC_User].[FirstName],
[dbo].[SEC_User].[LastName],
[dbo].[SEC_User].[EmailAddress]
FROM [dbo].[SEC_User]
WHERE [dbo].[SEC_User].[isAdmin] = 0 AND [dbo].[SEC_User].[UserID] = @UserID

GO
