-- Groub By -> divide o resultado da pesquisa em grupos
-- Por exemplo: 1) Calcular a soma de itens; 2) Contar o número de itens naquele grupo
/*
SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1;
*/
SELECT *
FROM Sales.SalesOrderDetail
-- O código abaixo vai agrupar todos os SpecialOfferID e soma os valores destes. 
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9 -- isto resulta em 61 linhas onde o SpecialOfferID é igual a 9

-- saber qual foi o preço de venda de cada produto vendido até hj
SELECT * FROM Sales.SalesOrderDetail

SELECT ProductId, COUNT(ProductId) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID -- vai da 266 de ProductId diferentes e com contagem respetiva

-- saber quantos nomes de cada nome temos cadastrado em nosso banco de dados
SELECT FirstName, COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName -- vai retornar 1018 linhas que é a contagem de quantas vezes aparece os nomes

-- na tabela prouction.product eu quero a média de preço para os produtos que são silver
SELECT *
FROM Production.Product

SELECT Color, AVG(ListPrice) AS "MEDIA"
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color