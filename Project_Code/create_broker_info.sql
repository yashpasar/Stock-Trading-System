USE [stockmarket]
GO
/****** Object:  Table [dbo].[broker_info]    Script Date: 06/09/2010 01:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[broker_info](
	[broker_id] [int] IDENTITY(1,1) NOT NULL,
	[broker_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[broker_address] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[contact_no] [int] NULL,
 CONSTRAINT [PK_broker_info] PRIMARY KEY CLUSTERED 
(
	[broker_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF