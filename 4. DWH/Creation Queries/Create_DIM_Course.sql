USE ExaminationSystemDWH
GO

/****** Object:  Table [dbo].[DIM|Course]    Script Date: 2/18/2024 6:30:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM|Course](
	[CourseSK] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[TopicID] [int] NULL,
	[TrackID] [int] NULL,
	[CourseName] [varchar](255) NULL,
	[CourseDuration] [int] NULL,
	[TopicName] [varchar](50) NULL,
	[TrackName] [varchar](50) NULL,
	[source_system_code] [tinyint] NULL,
	[is_current] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
 CONSTRAINT [PK_DIM|Course] PRIMARY KEY CLUSTERED 
(
	[CourseSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


