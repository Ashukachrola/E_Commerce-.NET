USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Category_Delete]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Delete]
@CategoryID	int

AS
DELETE FROM [dbo].[Category]
	
WHERE [dbo].[Category].[CategoryID] = @CategoryID

GO
