USE [stores]
GO
/****** Object:  Table [stores].[Accounts]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Accounts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[projectID] [bigint] NOT NULL,
	[accountNumber] [nvarchar](50) NOT NULL,
	[description] [nvarchar](200) NULL,
	[disabled] [bit] NOT NULL,
	[notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_accounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_accounts_projects] FOREIGN KEY([projectID])
REFERENCES [stores].[Projects] ([id])
GO
ALTER TABLE [stores].[Accounts] CHECK CONSTRAINT [FK_accounts_projects]
GO
ALTER TABLE [stores].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_accounts_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Accounts] CHECK CONSTRAINT [FK_accounts_stores]
GO
ALTER TABLE [stores].[Accounts] ADD  CONSTRAINT [DF_Accounts_disabled]  DEFAULT ((0)) FOR [disabled]
GO
