USE [stores]
GO
/****** Object:  Table [stores].[UserData]    Script Date: 08/24/2021 13:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [stores].[UserData](
	[UserId] [nvarchar](12) NOT NULL,
	[SName] [nvarchar](30) NULL,
	[FName] [nvarchar](15) NULL,
	[WorkArea] [nvarchar](30) NULL,
 CONSTRAINT [aaaaaUserData_PK] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
