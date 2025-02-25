USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[SEC_User_Insert]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SEC_User_Insert]

			 @UserName			nvarchar(50)
			,@Password			nvarchar(50)
			,@FirstName			nvarchar(50)
			,@LastName			nvarchar(50)
			,@EmailAddress		nvarchar(500)
			,@isAdmin			bit
			,@Created			datetime
			,@Modified			datetime

AS 

INSERT INTO [dbo].[SEC_User]
			(
			[UserName]
			,[Password]
			,[FirstName]
			,[LastName]
			,[EmailAddress]
			,[isAdmin]
			,[Created]
			,[Modified]
			)
	VALUES
			(
			 @UserName
			,@Password
			,@FirstName
			,@LastName
			,@EmailAddress
			,ISNULL(@isAdmin,0)
			,ISNULL(@Created,GETDATE())
			,ISNULL(@Modified,GETDATE())
	)

GO
