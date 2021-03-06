USE [stores]
GO
/****** Object:  Table [stores].[AllowedAccounts]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[AllowedAccounts](
	[userID] [bigint] NOT NULL,
	[accountID] [bigint] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_AllowedAccounts] PRIMARY KEY CLUSTERED 
(
	[userID] ASC,
	[accountID] ASC,
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[AllowedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_AllowedAccounts_accounts] FOREIGN KEY([accountID])
REFERENCES [stores].[Accounts] ([id])
GO
ALTER TABLE [stores].[AllowedAccounts] CHECK CONSTRAINT [FK_AllowedAccounts_accounts]
GO
ALTER TABLE [stores].[AllowedAccounts]  WITH CHECK ADD  CONSTRAINT [FK_AllowedAccounts_users] FOREIGN KEY([userID])
REFERENCES [stores].[Users] ([id])
GO
ALTER TABLE [stores].[AllowedAccounts] CHECK CONSTRAINT [FK_AllowedAccounts_users]
GO
