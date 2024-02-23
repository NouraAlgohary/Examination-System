USE ExaminationSystemDWH
GO

/****** Object:  Table [dbo].[DIM|Student]    Script Date: 2/18/2024 6:30:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIM|Student](
	[Student_SK] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[FreelanceID] [int] NULL,
	[CertificationID] [int] NULL,
	[JobID] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](6) NULL,
	[Faculty] [varchar](50) NULL,
	[GraduationYear] [int] NULL,
	[Phone] [int] NULL,
	[Location] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[FreelanceTrack] [varchar](50) NULL,
	[Tool] [varchar](50) NULL,
	[Freelance_Platform] [varchar](50) NULL,
	[Freelance_duration] [int] NULL,
	[Freelance_Cost] [int] NULL,
	[JobPosition] [varchar](50) NULL,
	[Company] [varchar](50) NULL,
	[JobHiringDate] [datetime] NULL,
	[Certificate] [varchar](50) NULL,
	[CertificatePlatform] [varchar](50) NULL,
	[CertificateDuration] [int] NULL,
	[is_current] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[source_system_code] [tinyint] NULL,
 CONSTRAINT [PK_DIM|Student] PRIMARY KEY CLUSTERED 
(
	[Student_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


