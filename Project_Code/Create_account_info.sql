USE [stockmarket]
GO
/****** Object:  Table [dbo].[account_info]    Script Date: 06/09/2010 01:35:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_info](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[trader_id] [int] NULL,
	[broker_id] [int] NULL,
	[cash] [int] NULL,
	[security] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [stockmarket]
GO
ALTER TABLE [dbo].[account_info]  WITH CHECK ADD FOREIGN KEY([broker_id])
REFERENCES [dbo].[broker_info] ([broker_id])
GO
ALTER TABLE [dbo].[account_info]  WITH CHECK ADD FOREIGN KEY([trader_id])
REFERENCES [dbo].[traderDetails] ([trader_id])