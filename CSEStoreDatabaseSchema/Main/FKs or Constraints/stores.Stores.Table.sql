USE [stores]
GO
/****** Object:  Table [stores].[Stores]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Stores](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[contactName] [nvarchar](50) NULL,
	[contactPhone] [nvarchar](50) NULL,
	[location] [nvarchar](50) NULL,
	[ohsPurchasing] [bit] NOT NULL,
	[storeManagerID] [bigint] NULL,
	[storeEditorID] [bigint] NULL,
	[domainServer] [nvarchar](max) NULL,
	[allowOverBuying] [bit] NOT NULL,
	[adGroup] [nvarchar](50) NOT NULL,
	[publicPurchasingComputer] [nvarchar](50) NULL,
	[loansEnabled] [bit] NOT NULL,
	[ohsApproval] [bit] NOT NULL,
	[loanApproval] [bit] NOT NULL,
	[ordersEnabled] [bit] NOT NULL,
	[markup] [decimal](18, 3) NOT NULL,
	[confirmPurchases] [bit] NOT NULL,
	[confirmCancel] [bit] NOT NULL,
 CONSTRAINT [PK_stores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[Stores]  WITH CHECK ADD  CONSTRAINT [FK_stores_StoreEditors] FOREIGN KEY([storeEditorID])
REFERENCES [stores].[StoreEditors] ([id])
GO
ALTER TABLE [stores].[Stores] CHECK CONSTRAINT [FK_stores_StoreEditors]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_stores_ohsPurchasing]  DEFAULT ((0)) FOR [ohsPurchasing]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_allowOverBuying]  DEFAULT ((0)) FOR [allowOverBuying]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_adGroup]  DEFAULT (N'unknown') FOR [adGroup]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_loansEnabled]  DEFAULT ((0)) FOR [loansEnabled]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_ohsApproval]  DEFAULT ((0)) FOR [ohsApproval]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_loadApproval]  DEFAULT ((0)) FOR [loanApproval]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_ordersEnabled]  DEFAULT ((0)) FOR [ordersEnabled]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_markup]  DEFAULT ((0)) FOR [markup]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_confirmPurchases]  DEFAULT ((0)) FOR [confirmPurchases]
GO
ALTER TABLE [stores].[Stores] ADD  CONSTRAINT [DF_Stores_confirmCancel]  DEFAULT ((0)) FOR [confirmCancel]
GO
