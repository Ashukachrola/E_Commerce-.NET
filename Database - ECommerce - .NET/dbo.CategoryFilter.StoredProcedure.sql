USE [ECommerce]
GO
/****** Object:  StoredProcedure [dbo].[CategoryFilter]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[CategoryFilter]
@CategoryName VARCHAR(100) = NULL

As
SELECT		[dbo].[Category].[CategoryID],
			[dbo].[Category].[CategoryName],
			[dbo].[Category].[Discription],

			
			[dbo].[Category].[Created],
			[dbo].[Category].[Modified]
FROM [dbo].[Category]
Where
(
		(@CategoryName IS NULL OR CategoryName LIKE CONCAT('%',@CategoryName,'%')) 
		)
GO
