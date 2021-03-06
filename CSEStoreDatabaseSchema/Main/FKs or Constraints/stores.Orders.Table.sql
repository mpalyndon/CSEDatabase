USE [stores]
GO
/****** Object:  Table [stores].[Orders]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[accountID] [bigint] NOT NULL,
	[jobnumber] [nvarchar](20) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[customer] [nvarchar](50) NULL,
	[userid] [bigint] NOT NULL,
	[email] [nvarchar](50) NULL,
	[orderTypeID] [bigint] NOT NULL,
	[isExternal] [bit] NOT NULL,
	[cost] [money] NOT NULL,
	[isOpen] [bit] NOT NULL,
	[location] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_accounts] FOREIGN KEY([accountID])
REFERENCES [stores].[Accounts] ([id])
GO
ALTER TABLE [stores].[Orders] CHECK CONSTRAINT [FK_Orders_accounts]
GO
ALTER TABLE [stores].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_orderTypes] FOREIGN KEY([orderTypeID])
REFERENCES [stores].[OrderTypes] ([id])
GO
ALTER TABLE [stores].[Orders] CHECK CONSTRAINT [FK_Orders_orderTypes]
GO
ALTER TABLE [stores].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Orders] CHECK CONSTRAINT [FK_Orders_stores]
GO
ALTER TABLE [stores].[Orders] ADD  CONSTRAINT [DF_Table1_entity]  DEFAULT ((0)) FOR [isExternal]
GO
ALTER TABLE [stores].[Orders] ADD  CONSTRAINT [DF_Orders_isOpen]  DEFAULT ((1)) FOR [isOpen]
GO
