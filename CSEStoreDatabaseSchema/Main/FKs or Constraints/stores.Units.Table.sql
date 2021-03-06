USE [stores]
GO
/****** Object:  Table [stores].[Units]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Units](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[disabled] [bit] NOT NULL,
 CONSTRAINT [PK_units] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [stores].[Units]  WITH CHECK ADD  CONSTRAINT [FK_units_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Units] CHECK CONSTRAINT [FK_units_stores]
GO
ALTER TABLE [stores].[Units] ADD  CONSTRAINT [DF_units_disabled]  DEFAULT ((0)) FOR [disabled]
GO
