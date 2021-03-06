USE [stores]
GO
/****** Object:  Table [stores].[Transactions]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Transactions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[userID] [bigint] NOT NULL,
	[accountID] [bigint] NOT NULL,
	[itemID] [bigint] NOT NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[unitPrice] [money] NOT NULL,
	[MSDSProduced] [bit] NULL,
	[riskAssesment] [nvarchar](max) NULL,
	[approvedBy] [bigint] NULL,
	[loanDueDate] [date] NULL,
	[loanDestination] [nvarchar](max) NULL,
	[loanEmergencyContact] [nvarchar](max) NULL,
	[purchaseDate] [datetime] NOT NULL,
	[stockOnHand] [int] NULL,
	[inventoryLevel] [decimal](18, 4) NOT NULL,
	[processed] [bit] NOT NULL,
	[orderID] [bigint] NULL,
	[returned] [bit] NOT NULL,
	[description] [nvarchar](max) NULL,
	[operatorName] [nvarchar](max) NULL,
 CONSTRAINT [PK_transactions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[Transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_transactions_accounts] FOREIGN KEY([accountID])
REFERENCES [stores].[Accounts] ([id])
GO
ALTER TABLE [stores].[Transactions] CHECK CONSTRAINT [FK_transactions_accounts]
GO
ALTER TABLE [stores].[Transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_transactions_item] FOREIGN KEY([itemID])
REFERENCES [stores].[Items] ([id])
GO
ALTER TABLE [stores].[Transactions] CHECK CONSTRAINT [FK_transactions_item]
GO
ALTER TABLE [stores].[Transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_transactions_Orders] FOREIGN KEY([orderID])
REFERENCES [stores].[Orders] ([id])
GO
ALTER TABLE [stores].[Transactions] CHECK CONSTRAINT [FK_transactions_Orders]
GO
ALTER TABLE [stores].[Transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_transactions_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Transactions] CHECK CONSTRAINT [FK_transactions_stores]
GO
ALTER TABLE [stores].[Transactions]  WITH NOCHECK ADD  CONSTRAINT [FK_transactions_users] FOREIGN KEY([userID])
REFERENCES [stores].[Users] ([id])
GO
ALTER TABLE [stores].[Transactions] CHECK CONSTRAINT [FK_transactions_users]
GO
ALTER TABLE [stores].[Transactions] ADD  CONSTRAINT [DF_transactions_MSDSProduced]  DEFAULT ((0)) FOR [MSDSProduced]
GO
ALTER TABLE [stores].[Transactions] ADD  CONSTRAINT [DF_transactions_approvedBy]  DEFAULT ((-1)) FOR [approvedBy]
GO
ALTER TABLE [stores].[Transactions] ADD  CONSTRAINT [DF_transactions_loanDueDate]  DEFAULT (NULL) FOR [loanDueDate]
GO
ALTER TABLE [stores].[Transactions] ADD  CONSTRAINT [DF_Transactions_inventoryLevel]  DEFAULT ((0)) FOR [inventoryLevel]
GO
ALTER TABLE [stores].[Transactions] ADD  CONSTRAINT [DF_Transactions_processed]  DEFAULT ((1)) FOR [processed]
GO
ALTER TABLE [stores].[Transactions] ADD  CONSTRAINT [DF_Transactions_returned]  DEFAULT ((0)) FOR [returned]
GO
