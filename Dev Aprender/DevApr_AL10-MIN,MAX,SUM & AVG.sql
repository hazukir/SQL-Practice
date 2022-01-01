-- MININO, MAXIMO, SOMA (SUM) E AVERAGE (M�DIA)
-- FUN��ES DE AGREGA��O
SELECT TOP 10 SUM(LineTotal) AS Somat�rio
FROM Sales.SalesOrderDetail; -- vai retornar o total do Top 10 de produtos.

SELECT TOP 10 MIN(LineTotal) AS Minimo
FROM Sales.SalesOrderDetail; -- Busca o valor minimo

SELECT TOP 10 MAX(LineTotal) AS Maximo
FROM Sales.SalesOrderDetail; -- Busca o valor m�ximo

SELECT TOP 10 AVG(LineTotal) AS M�dia
FROM Sales.SalesOrderDetail; -- Retorn a m�dia dos valores