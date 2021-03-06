USE [stockmarket]
GO
/****** Object:  Table [dbo].[stock_info]    Script Date: 06/09/2010 01:37:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stock_info](
	[stockid] [int] IDENTITY(1,1) NOT NULL,
	[stockname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shares_no] [int] NULL,
	[stock_symbol] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[company_id] [int] NULL,
	[trade_exchange_id] [int] NULL,
	[stock_launch_date] [datetime] NULL,
 CONSTRAINT [PK_stock_info] PRIMARY KEY CLUSTERED 
(
	[stockid] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [stockmarket]
GO
ALTER TABLE [dbo].[stock_info]  WITH CHECK ADD FOREIGN KEY([company_id])
REFERENCES [dbo].[company_info] ([company_id])
GO
ALTER TABLE [dbo].[stock_info]  WITH CHECK ADD FOREIGN KEY([trade_exchange_id])
REFERENCES [dbo].[exchange] ([exchange_id])