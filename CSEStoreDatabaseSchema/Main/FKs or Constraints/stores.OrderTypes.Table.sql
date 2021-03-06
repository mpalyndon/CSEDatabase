USE [stores]
GO
/****** Object:  Table [stores].[OrderTypes]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[OrderTypes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_orderTypes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[OrderTypes]  WITH CHECK ADD  CONSTRAINT [FK_orderTypes_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[OrderTypes] CHECK CONSTRAINT [FK_orderTypes_stores]
GO
