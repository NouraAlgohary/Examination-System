USE ExaminationSystemDWH; 

SELECT TOP 10000
    ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) - 1 AS Number
INTO Numbers
FROM master.dbo.spt_values as s1
CROSS JOIN master.dbo.spt_values as s2;

CREATE TABLE [dbo].[DIM|Date](
    [DateSK] INT IDENTITY(1,1) PRIMARY KEY,
    [Date] DATE,
    [Day] TINYINT,
    [DaySuffix] VARCHAR(4),
    [DayOfWeek] VARCHAR(9),
    [DOWInMonth] TINYINT,
    [DayOfYear] INT,
    [WeekOfYear] TINYINT,
    [WeekOfMonth] TINYINT,
    [Month] TINYINT,
    [MonthName] VARCHAR(9),
    [Quarter] TINYINT,
    [QuarterName] VARCHAR(6),
    [Year] SMALLINT
);

INSERT INTO [dbo].[DIM|Date] (
    [Date],
    [Day],
    [DaySuffix],
    [DayOfWeek],
    [DOWInMonth],
    [DayOfYear],
    [WeekOfYear],
    [WeekOfMonth],
    [Month],
    [MonthName],
    [Quarter],
    [QuarterName],
    [Year]
)
SELECT
    DATEADD(DAY, Number, '20100101') AS Date,
    DAY(DATEADD(DAY, Number, '20100101')) AS Day,
    CONVERT(VARCHAR(4), DAY(DATEADD(DAY, Number, '20100101'))) + 
        CASE WHEN DAY(DATEADD(DAY, Number, '20100101')) IN (11, 12, 13) THEN 'th'
             WHEN DAY(DATEADD(DAY, Number, '20100101')) % 10 = 1 THEN 'st'
             WHEN DAY(DATEADD(DAY, Number, '20100101')) % 10 = 2 THEN 'nd'
             WHEN DAY(DATEADD(DAY, Number, '20100101')) % 10 = 3 THEN 'rd'
             ELSE 'th'
        END,
    DATENAME(WEEKDAY, DATEADD(DAY, Number, '20100101')),
    DATEPART(DAY, DATEADD(DAY, Number, '20100101')),
    DATEPART(DAYOFYEAR, DATEADD(DAY, Number, '20100101')),
    DATEPART(WEEK, DATEADD(DAY, Number, '20100101')),
    DATEPART(WEEK, DATEADD(DAY, Number, '20100101')) - DATEPART(WEEK, DATEADD(MONTH, DATEDIFF(MONTH, 0, DATEADD(DAY, Number, '20100101')), 0)) + 1,
    MONTH(DATEADD(DAY, Number, '20100101')),
    DATENAME(MONTH, DATEADD(DAY, Number, '20100101')),
    DATEPART(QUARTER, DATEADD(DAY, Number, '20100101')),
    'Q' + CAST(DATEPART(QUARTER, DATEADD(DAY, Number, '20100101')) AS VARCHAR),
    YEAR(DATEADD(DAY, Number, '20100101'))
FROM
    Numbers
WHERE
    DATEADD(DAY, Number, '20100101') BETWEEN '2010-01-01' AND '2050-12-31';