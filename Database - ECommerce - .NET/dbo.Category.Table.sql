USE [ECommerce]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/16/2024 1:24:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NOT NULL,
	[Discription] [varchar](100) NOT NULL,
	[Created] [datetime] NULL CONSTRAINT [DF_Category_Created]  DEFAULT (getdate()),
	[Modified] [datetime] NULL CONSTRAINT [DF_Category_Modified]  DEFAULT (getdate()),
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
