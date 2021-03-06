USE [stores]
GO
/****** Object:  Table [stores].[Suppliers]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Suppliers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[mobileNumber] [nvarchar](50) NULL,
	[faxNumber] [nvarchar](50) NULL,
	[contactName] [nvarchar](50) NULL,
	[Notes] [nvarchar](max) NULL,
	[emailAddress] [nvarchar](50) NULL,
	[website] [nvarchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_stores]
GO
