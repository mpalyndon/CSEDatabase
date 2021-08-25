USE [stores]
GO
/****** Object:  Table [stores].[RecPass]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[RecPass](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[uName] [nvarchar](50) NOT NULL,
	[secCode] [nvarchar](50) NOT NULL,
	[expDate] [datetime] NOT NULL,
	[secCodeUsed] [bit] NOT NULL
) ON [PRIMARY]
GO
