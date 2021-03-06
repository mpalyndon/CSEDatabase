USE [stores]
GO
/****** Object:  Table [stores].[StoreEditors]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[StoreEditors](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeId] [bigint] NOT NULL,
	[userId] [bigint] NULL,
 CONSTRAINT [PK_StoreEditors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[StoreEditors]  WITH CHECK ADD  CONSTRAINT [FK_StoreEditors_stores] FOREIGN KEY([storeId])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[StoreEditors] CHECK CONSTRAINT [FK_StoreEditors_stores]
GO
ALTER TABLE [stores].[StoreEditors]  WITH CHECK ADD  CONSTRAINT [FK_StoreEditors_users] FOREIGN KEY([userId])
REFERENCES [stores].[Users] ([id])
GO
ALTER TABLE [stores].[StoreEditors] CHECK CONSTRAINT [FK_StoreEditors_users]
GO
