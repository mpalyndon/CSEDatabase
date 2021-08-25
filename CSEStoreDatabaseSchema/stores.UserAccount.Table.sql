USE [stores]
GO
/****** Object:  Table [stores].[UserAccount]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[UserAccount](
	[UserID] [nvarchar](12) NULL,
	[Valid Acct Code] [nvarchar](17) NULL,
	[Delete] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [stores].[UserAccount] ADD  DEFAULT ((0)) FOR [Delete]
GO
