USE [stockmarket]
GO
/****** Object:  Table [dbo].[company_info]    Script Date: 06/09/2010 01:36:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company_info](
	[company_id] [int] IDENTITY(1,1) NOT NULL,
	[company_name] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[street_number] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[city] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[zipcode] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[apartment_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[street] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[established_date] [datetime] NULL,
 CONSTRAINT [PK_company_address] PRIMARY KEY CLUSTERED 
(
	[company_id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF