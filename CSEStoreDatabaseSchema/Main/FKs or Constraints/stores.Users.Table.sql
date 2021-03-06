USE [stores]
GO
/****** Object:  Table [stores].[Users]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[preferredName] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[barcodes] [nvarchar](100) NOT NULL,
	[location] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[startDate] [datetime] NULL,
	[finishDate] [datetime] NULL,
	[schoolArea] [nvarchar](50) NULL,
	[changeReminder] [bit] NULL,
	[reminderNotes] [nvarchar](max) NULL,
	[notes] [nvarchar](max) NULL,
	[reminderDate] [datetime] NULL,
	[supervisor] [nvarchar](max) NULL,
	[password] [nvarchar](50) NULL,
	[isPasswordChanged] [bit] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[Users]  WITH CHECK ADD  CONSTRAINT [FK_users_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Users] CHECK CONSTRAINT [FK_users_stores]
GO
ALTER TABLE [stores].[Users] ADD  CONSTRAINT [DF_users_surname]  DEFAULT (N'missing') FOR [surname]
GO
ALTER TABLE [stores].[Users] ADD  CONSTRAINT [DF_Users_username]  DEFAULT (N'Unknown') FOR [username]
GO
ALTER TABLE [stores].[Users] ADD  CONSTRAINT [DF_Users_location]  DEFAULT (N'Unknown') FOR [location]
GO
ALTER TABLE [stores].[Users] ADD  CONSTRAINT [DF_Users_type]  DEFAULT (N'Unknown') FOR [type]
GO
ALTER TABLE [stores].[Users] ADD  CONSTRAINT [DF_Users_schoolArea]  DEFAULT (N'Unknown') FOR [schoolArea]
GO
ALTER TABLE [stores].[Users] ADD  CONSTRAINT [DF_Users_isPasswordChanged]  DEFAULT ((0)) FOR [isPasswordChanged]
GO
