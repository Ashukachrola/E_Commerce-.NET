USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[Product_Insert]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Product_Insert]
	@ProductName	varchar(100),
	@Discription	varchar(500),
	@Price			decimal(12,2),
	@Code			varchar(100),
	@DisplayImage	varchar(500),
	@CategoryID		int,
	@isActive		bit,
	@Discount		int,
	@Rating			int, 
	@Created		datetime,
	@Modified		datetime
AS

INSERT INTO [dbo].[MST_Product]
(
	[ProductName], 
	[Discription], 
	[Price],
	[Code],
	[DisplayImage],
	[CategoryID],
	[isActive],
	[Discount],
	[Rating],
	[Created],
	[Modified]
)
VALUES
(	
		@ProductName,	
		@Discription,	
		@Price,			
		@Code,			
		@DisplayImage,	
		@CategoryID,		
		ISNULL(@isActive,1),		
		@Discount,
		@Rating,
		ISNULL(@Created,getdate()),	
		ISNULL(@Modified,getdate())	
)

GO
