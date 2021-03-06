USE [stores]
GO
/****** Object:  Table [stores].[Catagories]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Catagories](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[disabled] [bit] NOT NULL,
 CONSTRAINT [PK_catagories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[Catagories]  WITH CHECK ADD  CONSTRAINT [FK_catagories_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Catagories] CHECK CONSTRAINT [FK_catagories_stores]
GO
ALTER TABLE [stores].[Catagories] ADD  CONSTRAINT [DF_catagories_enabled]  DEFAULT ((0)) FOR [disabled]
GO
