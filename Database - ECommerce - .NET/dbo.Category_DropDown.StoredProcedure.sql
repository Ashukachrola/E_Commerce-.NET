USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Category_DropDown]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_DropDown]

AS
Select	[dbo].[Category].[CategoryID],
		[dbo].[Category].[CategoryName]

FROM [dbo].[Category]

GO
