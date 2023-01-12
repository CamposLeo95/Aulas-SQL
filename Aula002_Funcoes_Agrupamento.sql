USE ContosoRetailDW;

SELECT * FROM DimProduct
------------------------------ GROUP BY--------------------------------------
-- EXEMPLO 1 → COUNT
SELECT
	BrandName AS 'Nome da Marca',
	COUNT(*) AS 'Qtd Marca'
FROM
	DimProduct
GROUP BY BrandName

-- EXEMPLO 2 → AVG
SELECT
	BrandName,
	AVG(UnitCost)
FROM
	DimProduct
GROUP BY BrandName

-- EXEMPLO 2 → MAX , MAX e ORDER BY 
SELECT
	BrandName AS 'Nome do Produto',
	MAX(UnitPrice) AS 'Maior Preço',
	MIN(UnitPrice) AS 'Menor Preço'
FROM
	DimProduct
GROUP BY BrandName
ORDER BY [Menor Preço]

------------------------------ WHERE--------------------------------------
SELECT * FROM DimProduct

SELECT
	ColorName AS 'Cores',
	COUNT(BrandName) 'Qtd Cor por Marca'
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY ColorName
ORDER BY COUNT(BrandName)

------------------------------ HAVING --------------------------------------
-- HAVING funciona da mesma forma que o WHERE como um filtro só que depois de agruparmos

SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Total por Marca'
FROM
	DimProduct
GROUP BY BrandName
HAVING COUNT(BrandName) >= 100