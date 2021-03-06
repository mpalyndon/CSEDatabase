USE [stores]
GO
/****** Object:  Table [stores].[AuditTrail]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[AuditTrail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeid] [bigint] NOT NULL,
	[accountID] [bigint] NOT NULL,
	[userID] [bigint] NOT NULL,
	[objectid] [bigint] NOT NULL,
	[action] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[beforeQuantity] [decimal](18, 4) NOT NULL,
	[afterQuantity] [decimal](18, 4) NOT NULL,
	[beforeValue] [nvarchar](max) NULL,
	[afterValue] [nvarchar](max) NULL,
	[actionDate] [datetime] NOT NULL,
	[origionalDate] [datetime] NOT NULL,
 CONSTRAINT [PK_AuditTrail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[AuditTrail]  WITH CHECK ADD  CONSTRAINT [FK_AuditTrail_stores] FOREIGN KEY([storeid])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[AuditTrail] CHECK CONSTRAINT [FK_AuditTrail_stores]
GO
