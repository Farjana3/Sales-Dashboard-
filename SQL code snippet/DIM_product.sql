USE AdventureWorksDW2019;
GO

SELECT p.ProductKey,
      p.[ProductAlternateKey] as ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      p.[EnglishProductName] as [Product Name],
	  ps.[EnglishProductSubcategoryName] as [Sub Category], --joined from SubCategory table 
	  pc.[EnglishProductCategoryName] as [Product Category], --joined from Category table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color] as [Product Colour],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      p.[Size] as [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      --,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName] as [Product Model Name],
      --,[LargePhoto]
      p.[EnglishDescription] as [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
	 
      ISNULL (p.Status,'Outdated') as [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
order by
 p.Productkey asc