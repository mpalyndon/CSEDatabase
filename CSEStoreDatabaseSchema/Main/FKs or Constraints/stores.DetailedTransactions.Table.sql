USE [stores]
GO
/****** Object:  Table [stores].[DetailedTransactions]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[DetailedTransactions](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[storeDescription] [nvarchar](max) NOT NULL,
	[accountNumber] [nvarchar](50) NOT NULL,
	[accountDescription] [nvarchar](max) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[itemDescription] [nvarchar](max) NOT NULL,
	[itemBarcode] [nvarchar](100) NOT NULL,
	[quantity] [decimal](18, 4) NOT NULL,
	[unitprice] [money] NOT NULL,
	[MSDSProduced] [bit] NULL,
	[riskAssesment] [nvarchar](max) NULL,
	[approvedBy] [nvarchar](max) NULL,
	[loanDueDate] [date] NULL,
	[loanDestination] [nvarchar](max) NULL,
	[loanEmergencyContact] [nvarchar](max) NULL,
	[purchaseDate] [datetime] NOT NULL,
	[stockOnHand] [int] NULL,
	[inventoryLevel] [decimal](18, 4) NOT NULL,
	[processed] [bit] NOT NULL,
	[orderid] [bigint] NULL,
	[returned] [bit] NOT NULL,
	[description] [nvarchar](max) NULL,
	[operatorName] [nvarchar](max) NULL,
 CONSTRAINT [PK_detailedTransactions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[DetailedTransactions] ADD  CONSTRAINT [DF_detailedTransactions_processed]  DEFAULT ((1)) FOR [processed]
GO
ALTER TABLE [stores].[DetailedTransactions] ADD  CONSTRAINT [DF_detailedTransactions_returned]  DEFAULT ((0)) FOR [returned]
GO
