-- DESAFIO 01 - QUANTAS PESSOAS TEM O MESMO MiddleName. A AGRUPAÇÃO DEVE SER POR MiddleName
SELECT MiddleName, COUNT(MiddleName) AS "CONTAGEM"
FROM Person.Person
GROUP BY MiddleName

-- DESAFIO 02 - QUAL É EM MÉDIA A QUANTIDADE DE CADA PRODUTO VENDIDO NA LOJA.
SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, AVG(OrderQty) AS "MEDIA"
FROM Sales.SalesOrderDetail
GROUP BY ProductID


-- DESAFIO 03 - QUAL FORAM AS VENDAS QUE NO TOTAL TIVERAM OS MAIORES VALORES DE VENDA(Line Total) POR PRODUTO DO MAIOR VALOR PARA O MENOR
SELECT *
FROM  Sales.SalesOrderDetail

SELECT TOP 10 ProductID, SUM(LineTotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;


-- DESAFIO 04 - Quantos produtos e qual a quantidade média de produtos temos cadastrados nas nossas ordem de serviço (WorkOrder), agrupados por ProductID
SELECT *
FROM Production.WorkOrder

SELECT ProductID, COUNT(ProductID) AS "CONTAGEM",
AVG(OrderQty) AS "MEDIA"
FROM Production.WorkOrder
GROUP BY ProductID