USE [ECommerce]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AddressID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[isCompleted] [bit] NOT NULL CONSTRAINT [DF_Order_isCompleted]  DEFAULT ((0)),
	[OrderStatus] [nvarchar](100) NOT NULL CONSTRAINT [DF_Order_OrderStatus]  DEFAULT (N'Pending'),
	[Created] [datetime] NOT NULL CONSTRAINT [DF_Order_Created]  DEFAULT (getdate()),
	[Modified] [datetime] NOT NULL CONSTRAINT [DF_Order_Modified]  DEFAULT (getdate()),
	[Completed] [datetime] NOT NULL CONSTRAINT [DF_Order_Completed]  DEFAULT (getdate()),
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Address]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_MST_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[MST_Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_MST_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[SEC_User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
