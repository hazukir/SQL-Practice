-- MININO, MAXIMO, SOMA (SUM) E AVERAGE (MÉDIA)
-- FUNÇÕES DE AGREGAÇÃO
SELECT TOP 10 SUM(LineTotal) AS Somatório
FROM Sales.SalesOrderDetail; -- vai retornar o total do Top 10 de produtos.

SELECT TOP 10 MIN(LineTotal) AS Minimo
FROM Sales.SalesOrderDetail; -- Busca o valor minimo

SELECT TOP 10 MAX(LineTotal) AS Maximo
FROM Sales.SalesOrderDetail; -- Busca o valor máximo

SELECT TOP 10 AVG(LineTotal) AS Média
FROM Sales.SalesOrderDetail; -- Retorn a média dos valores