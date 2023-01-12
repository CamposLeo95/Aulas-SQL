----------------------------------- JOIN ---------------------------------------------
/*
ESTRUTURA:
SELECT
	TABELA_A.COLUNA1,
	TABELA_A.COLUNA2,
	TABELA_A.COLUNA3,
	TABELA_B.COLUNA4
FROM
	TABELA_A
INNER JOIN TABELA_B
	ON = TABELA_A.id_chave_estrangeira = TABELA_B.id_chave_primaria
*/
----------------------------------- LEFT (OUTER) JOIN ---------------------------------------------
SELECT * FROM Produtos
SELECT * FROM Subcategoria

SELECT 
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria,
	subcategoria.nome_subcategoria
FROM 
	produtos
LEFT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria

----------------------------------- RIGHT (OUTER) JOIN ---------------------------------------------
SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria,
	subcategoria.nome_subcategoria
FROM
	produtos
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria

----------------------------------- INNER (OUTER) JOIN ---------------------------------------------
SELECT 
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM	
	produtos
INNER JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria

----------------------------------- FULL (OUTER) JOIN ---------------------------------------------
SELECT 
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria,
	subcategoria.id_subcategoria
FROM
	produtos
FULL JOIN subcategoria
	ON subcategoria.id_subcategoria = produtos.id_subcategoria

----------------------------------- LEFT (ANTI) JOIN ---------------------------------------------
SELECT 
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria,
	subcategoria.nome_subcategoria
FROM 
	produtos
LEFT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE nome_subcategoria IS NULL
----------------------------------- RIGHT (ANTI) JOIN ---------------------------------------------
SELECT 
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria,
	subcategoria.nome_subcategoria
FROM 
	produtos
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE id_produto IS NULL

----------------------------------- FULL (ANTI) JOIN ---------------------------------------------
SELECT 
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria,
	subcategoria.nome_subcategoria
FROM 
	produtos
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE id_produto IS NULL OR nome_subcategoria IS NULL
