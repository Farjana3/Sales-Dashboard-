-- cleaned Dim DateTable--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day,
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --[DayNumberOfYear], 
  [WeekNumberOfYear] AS Weeknr, 
  [EnglishMonthName] AS Month,
  LEFT([EnglishMonthName],3) AS MonthShort, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear >= 2019