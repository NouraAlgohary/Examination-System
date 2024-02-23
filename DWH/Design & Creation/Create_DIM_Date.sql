USE [ExaminationSystemDWH]
GO

/****** Object:  Table [dbo].[DIM|Date]    Script Date: 2/21/2024 12:36:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM|Date](
	[DateSK] [int] NOT NULL,
	[Date] [date] NULL,
	[Day] [tinyint] NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayOfWeek] [varchar](9) NULL,
	[DOWInMonth] [tinyint] NULL,
	[DayOfYear] [int] NULL,
	[WeekOfYear] [tinyint] NULL,
	[WeekOfMonth] [tinyint] NULL,
	[Month] [tinyint] NULL,
	[MonthName] [varchar](9) NULL,
	[Quarter] [tinyint] NULL,
	[QuarterName] [varchar](6) NULL,
	[Year] [smallint] NULL,
 CONSTRAINT [PK__DIM|Date__A4262D7552055A5D] PRIMARY KEY CLUSTERED 
(
	[DateSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


