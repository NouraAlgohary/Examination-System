USE ExaminationSystemDWH
GO

/****** Object:  Table [dbo].[DIM|Instructor]    Script Date: 2/18/2024 6:30:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM|Instructor](
	[InstructorSK] [int] IDENTITY(1,1) NOT NULL,
	[InstructorID] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Age] [int] NULL,
	[Location] [varchar](50) NULL,
	[Gender] [varchar](6) NULL,
	[Phone] [int] NULL,
	[Salary] [int] NULL,
	[HiringDate] [datetime] NULL,
	[WorkingStatus] [varchar](50) NULL,
	[source_system_code] [tinyint] NULL,
	[is_current] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
 CONSTRAINT [PK_DIM|Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


