USE [stockmarket]
GO
/****** Object:  Table [dbo].[stock_options_buysell]    Script Date: 06/09/2010 01:37:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stock_options_buysell](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[stock_id] [int] NULL,
	[order_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[broker_id] [int] NULL,
	[transaction_type] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[exchange_id] [int] NULL,
	[price] [int] NULL,
	[shares_no] [int] NULL,
	[order_expiration] [datetime] NULL,
	[deal_confirmed] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[brokeragepaidbyseller] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[brokeragepaidbuyer] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trader_id] [int] NULL,
	[typeoforder] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_stock_options_buysell] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [stockmarket]
GO
ALTER TABLE [dbo].[stock_options_buysell]  WITH CHECK ADD  CONSTRAINT [FK__stock_opt__broke__2C3393D0] FOREIGN KEY([broker_id])
REFERENCES [dbo].[broker_info] ([broker_id])
GO
ALTER TABLE [dbo].[stock_options_buysell]  WITH CHECK ADD  CONSTRAINT [FK__stock_opt__excha__2E1BDC42] FOREIGN KEY([exchange_id])
REFERENCES [dbo].[exchange] ([exchange_id])
GO
ALTER TABLE [dbo].[stock_options_buysell]  WITH CHECK ADD  CONSTRAINT [FK__stock_opt__stock__2A4B4B5E] FOREIGN KEY([stock_id])
REFERENCES [dbo].[stock_info] ([stockid])