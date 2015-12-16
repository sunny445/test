/****** Object:  Table [xfr].[tblTransferFileSize]    Script Date: 02/26/2015 11:24:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[xfr].[tblTransferFileSize]') AND type in (N'U'))
DROP TABLE [xfr].[tblTransferFileSize]
GO

/****** Object:  Table [xfr].[tblTransferFileSize]    Script Date: 02/26/2015 11:24:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [xfr].[tblTransferFileSize](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransferBatchId] [numeric](38, 0) NULL,
	[TransferId] [numeric](38, 0) NULL,
	[FileName] [varchar](255) NULL,
	[FileSize] [numeric](38, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


