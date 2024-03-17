USE ExaminationSystemDWH
GO

/****** Object:  Table [dbo].[DIM|Questions]    Script Date: 2/18/2024 6:30:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM|Questions](
	[QuestionSK] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NULL,
	[QuestionTitle] [varchar](255) NULL,
	[QuestionType] [varchar](50) NULL,
	[Choices] [varchar](255) NULL,
	[CorrectAnswer] [varchar](255) NULL,
	[source_system_code] [tinyint] NULL,
	[is_current] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
 CONSTRAINT [PK_DIM|Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


