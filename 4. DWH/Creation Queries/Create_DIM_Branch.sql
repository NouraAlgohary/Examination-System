USE ExaminationSystemDWH
GO

/****** Object:  Table [dbo].[DIM|Branch]    Script Date: 2/18/2024 6:30:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM|Branch](
	[BranchSK] [int] IDENTITY(1,1) NOT NULL,
	[BranchID] [int] NULL,
	[Location] [varchar](50) NULL,
	[Manager] [varchar](50) NULL,
	[source_system_code] [tinyint] NULL,
	[is_current] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
 CONSTRAINT [PK_DIM|Branch] PRIMARY KEY CLUSTERED 
(
	[BranchSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


