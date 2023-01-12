USE ContosoRetailDW;

SELECT
	TOP(100) *
FROM
	FactSales

------------------------------------------ FUNCAO SUM ------------------------------------------------
SELECT
	SUM(SalesQuantity) AS 'Quantidade vendida',
	SUM(ReturnQuantity) AS 'Quantidade devolvida'
FROM
	FactSales

------------------------------------------ FUNCAO COUNT ---------------------------------------
SELECT
	*
FROM
	DimProduct

SELECT
	COUNT(*) AS 'Quantidade de produto'
FROM 
	DimProduct

SELECT
	COUNT(Size) 'Quantidade size'
FROM
	DimProduct

------------------------------------------ COUNT DISTINCT -------------------------------------
SELECT
	COUNT(DISTINCT BrandName)
FROM
	DimProduct

------------------------------------------ MIN  E MAX ----------------------------------------
SELECT
	MAX(UnitCost) AS 'Maior custo',
	MIN(UnitCost) AS 'Menor custo'
FROM
	DimProduct

--------------------------------------------- AVG ------------------------------------------------
SELECT
	AVG(YearlyIncome) AS 'Media Salario Anual'
FROM
	DimCustomer