USE [stockmarket]
GO
/****** Object:  Table [dbo].[traderDetails]    Script Date: 06/09/2010 01:37:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[traderDetails](
	[trader_id] [int] IDENTITY(1,1) NOT NULL,
	[tax_id] [int] NULL,
	[trader_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trader_brokerid] [int] NULL,
	[account_no] [int] NULL,
 CONSTRAINT [PK_traderDetails] PRIMARY KEY CLUSTERED 
(
	[trader_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [stockmarket]
GO
ALTER TABLE [dbo].[traderDetails]  WITH CHECK ADD FOREIGN KEY([trader_brokerid])
REFERENCES [dbo].[broker_info] ([broker_id])