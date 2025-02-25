USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Product_Update]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Update]
@ProductID		int, 
@ProductName	varchar(100),
@Discription	varchar(500),
@Price			decimal(12,2),
@Code			varchar(100),
@DisplayImage	varchar(500),
@CategoryID		int,
@Discount		int, 
@Modified		datetime,
@Rating			int

AS
UPDATE [dbo].[MST_Product]

SET [ProductName]	=  @ProductName,	
	[Discription]	=  @Discription,	
	[Price]			=  @Price,			
	[Code]			=  @Code,			
	[DisplayImage]	=  @DisplayImage,	
	[CategoryID]	=  @CategoryID,				
	[Discount]		=  @Discount,	
	[Rating]		=  @Rating,	
	[Modified]		=  ISNULL(@Modified,getdate())	
	
WHERE [dbo].[MST_Product].[ProductID] = @ProductID 

GO
