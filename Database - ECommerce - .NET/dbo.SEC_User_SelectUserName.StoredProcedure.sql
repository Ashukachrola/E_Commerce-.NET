USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[SEC_User_SelectUserName]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SEC_User_SelectUserName]
@UserName			nvarchar(50)
AS 

SELECT
		[dbo].[SEC_User].[UserName]
FROM	[dbo].[SEC_User]
WHERE	[dbo].[SEC_User].[UserName] = @UserName

GO
