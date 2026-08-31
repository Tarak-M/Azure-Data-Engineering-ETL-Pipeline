/****** Object:  Table [dbo].[metadata]    Script Date: 8/31/2026 7:16:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[metadata](
	[sourceschma] [varchar](50) NULL,
	[sourcetable] [varchar](50) NULL,
	[storagepath] [varchar](50) NULL,
	[isactive] [int] NULL,
	[status] [varchar](50) NULL
) ON [PRIMARY]
GO


