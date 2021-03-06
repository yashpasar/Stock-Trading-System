USE [stockmarket]
GO
/****** Object:  Table [dbo].[brokerExchangeDeals]    Script Date: 06/09/2010 01:36:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brokerExchangeDeals](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[broker_id] [int] NULL,
	[exchange_id] [int] NULL,
	[fees_given] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [stockmarket]
GO
ALTER TABLE [dbo].[brokerExchangeDeals]  WITH CHECK ADD FOREIGN KEY([broker_id])
REFERENCES [dbo].[broker_info] ([broker_id])
GO
ALTER TABLE [dbo].[brokerExchangeDeals]  WITH CHECK ADD FOREIGN KEY([exchange_id])
REFERENCES [dbo].[exchange] ([exchange_id])