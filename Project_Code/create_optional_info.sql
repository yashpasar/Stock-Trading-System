USE [stockmarket]
GO
/****** Object:  Table [dbo].[optional_info]    Script Date: 06/09/2010 01:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[optional_info](
	[stockid] [int] NULL,
	[optiontype] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[stock_symbol] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[stock_price] [money] NULL,
	[expire_date] [datetime] NULL,
	[last_tradeprice] [money] NULL,
	[volume] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF