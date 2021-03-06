USE [stores]
GO
/****** Object:  Table [stores].[Projects]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Projects](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[description] [nvarchar](100) NOT NULL,
	[manager] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_projects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Finance System Project Code' , @level0type=N'SCHEMA',@level0name=N'stores', @level1type=N'TABLE',@level1name=N'Projects', @level2type=N'COLUMN',@level2name=N'code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the project' , @level0type=N'SCHEMA',@level0name=N'stores', @level1type=N'TABLE',@level1name=N'Projects', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Responsible person' , @level0type=N'SCHEMA',@level0name=N'stores', @level1type=N'TABLE',@level1name=N'Projects', @level2type=N'COLUMN',@level2name=N'manager'
GO
ALTER TABLE [stores].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_projects_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Projects] CHECK CONSTRAINT [FK_projects_stores]
GO
