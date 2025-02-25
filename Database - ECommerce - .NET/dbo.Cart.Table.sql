USE [ECommerce]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Quantity] [int] NOT NULL CONSTRAINT [DF_Cart_Quantity]  DEFAULT ((1)),
	[isOrderDone] [bit] NULL CONSTRAINT [DF_Cart_isOrderDone]  DEFAULT ((0)),
	[Created] [datetime] NOT NULL CONSTRAINT [DF_Cart_Cretaed]  DEFAULT (getdate()),
	[Modified] [datetime] NOT NULL CONSTRAINT [DF_Cart_Modified]  DEFAULT (getdate()),
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[SEC_User] ([UserID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
