USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Category_Update]
@CategoryID		int, 
@CategoryName	varchar(100),
@Discription	varchar(500),
@Modified		datetime

AS
UPDATE [dbo].[Category]

SET [CategoryName]	=  @CategoryName,	
	[Discription]	=  @Discription,						
	[Modified]		=  ISNULL(@Modified,getdate())	
	
WHERE [dbo].[Category].[CategoryID] = @CategoryID 

GO
