USE [stores]
GO
/****** Object:  Table [stores].[Items]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[Items](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[storeID] [bigint] NOT NULL,
	[description] [nvarchar](100) NOT NULL,
	[barcode] [nvarchar](100) NOT NULL,
	[catagoryID] [bigint] NOT NULL,
	[unitsID] [bigint] NOT NULL,
	[pricePerUnit] [money] NOT NULL,
	[purchaseDate] [datetime] NULL,
	[inventoryLevelAlert] [int] NOT NULL,
	[supplierID] [bigint] NULL,
	[supplierPartNumber] [nvarchar](100) NULL,
	[supplierNotes] [nvarchar](max) NULL,
	[ohsorLoanitem] [int] NOT NULL,
	[hazardusSubstance] [bit] NULL,
	[dangerousGoodsCatagory] [nvarchar](5) NULL,
	[dangerousGoodsCatagory2] [nvarchar](5) NULL,
	[dangerousGoodsCatagory3] [nvarchar](5) NULL,
	[msdsRequired] [bit] NULL,
	[riskassesmentRequired] [bit] NULL,
	[photo] [nvarchar](max) NULL,
	[loansNotes] [nvarchar](max) NULL,
	[storeLocation] [nvarchar](50) NULL,
	[inventoryLevel] [decimal](18, 4) NOT NULL,
	[inventoryLevel2] [decimal](18, 4) NOT NULL,
	[stockOrdered] [bit] NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique database identified' , @level0type=N'SCHEMA',@level0name=N'stores', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mapping for the store the item is in' , @level0type=N'SCHEMA',@level0name=N'stores', @level1type=N'TABLE',@level1name=N'Items', @level2type=N'COLUMN',@level2name=N'storeID'
GO
ALTER TABLE [stores].[Items]  WITH CHECK ADD  CONSTRAINT [FK_item_catagories] FOREIGN KEY([catagoryID])
REFERENCES [stores].[Catagories] ([id])
GO
ALTER TABLE [stores].[Items] CHECK CONSTRAINT [FK_item_catagories]
GO
ALTER TABLE [stores].[Items]  WITH CHECK ADD  CONSTRAINT [FK_item_stores] FOREIGN KEY([storeID])
REFERENCES [stores].[Stores] ([id])
GO
ALTER TABLE [stores].[Items] CHECK CONSTRAINT [FK_item_stores]
GO
ALTER TABLE [stores].[Items]  WITH CHECK ADD  CONSTRAINT [FK_item_Suppliers] FOREIGN KEY([supplierID])
REFERENCES [stores].[Suppliers] ([id])
GO
ALTER TABLE [stores].[Items] CHECK CONSTRAINT [FK_item_Suppliers]
GO
ALTER TABLE [stores].[Items]  WITH CHECK ADD  CONSTRAINT [FK_item_units] FOREIGN KEY([unitsID])
REFERENCES [stores].[Units] ([id])
GO
ALTER TABLE [stores].[Items] CHECK CONSTRAINT [FK_item_units]
GO
ALTER TABLE [stores].[Items] ADD  CONSTRAINT [DF_item_ohsorLoanitem]  DEFAULT ((0)) FOR [ohsorLoanitem]
GO
ALTER TABLE [stores].[Items] ADD  CONSTRAINT [DF_Items_inventoryLevel]  DEFAULT ((0)) FOR [inventoryLevel]
GO
ALTER TABLE [stores].[Items] ADD  CONSTRAINT [DF_Items_inventoryLevel2]  DEFAULT ((0)) FOR [inventoryLevel2]
GO
ALTER TABLE [stores].[Items] ADD  CONSTRAINT [DF_Items_stockOrdered]  DEFAULT ((0)) FOR [stockOrdered]
GO
ALTER TABLE [stores].[Items] ADD  CONSTRAINT [DF_Items_enabled]  DEFAULT ((1)) FOR [enabled]
GO
