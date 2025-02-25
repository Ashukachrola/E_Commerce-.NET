USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[SEC_User_SelectByUserNamePassword]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SEC_User_SelectByUserNamePassword]

			@UserName			nvarchar(50),
			@Password			nvarchar(50)
AS 
SELECT

		[dbo].[SEC_User].[UserID]
		,[dbo].[SEC_User].[UserName]
		,[dbo].[SEC_User].[Password]
		,[dbo].[SEC_User].[FirstName]
		,[dbo].[SEC_User].[LastName]
		,[dbo].[SEC_User].[EmailAddress]
		,[dbo].[SEC_User].[isAdmin]
		,[dbo].[SEC_User].[isActive]
		,[dbo].[SEC_User].[Created]
		,[dbo].[SEC_User].[Modified]
FROM	[dbo].[SEC_User]
WHERE	[dbo].[SEC_User].[UserName] = @UserName
AND		[dbo].[SEC_User].[Password] = @Password

GO
