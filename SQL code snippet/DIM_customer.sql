USE AdventureWorksDW2019;
GO 
SELECT 
  c.CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName AS [First Name], 
  --,[MiddleName]
  c.LastName as [Last Name], 
  CONCAT (c.FirstName, ' ', c.LastName) AS [Full Name], 
  CASE WHEN c.Gender = 'M' THEN 'Male' WHEN c.Gender = 'F' THEN 'Female' ELSE 'Unknown' END AS Gender, 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  ---,[Suffix]
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.DateFirstPurchase, 
  g.City AS [Customer City] --,[CommuteDistance]
  --FROM [AdventureWorksDW2019].[dbo].[DimCustomer]
FROM 
  dbo.DimCustomer c 
  LEFT JOIN dbo.DimGeography g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  c.CustomerKey ASC;
