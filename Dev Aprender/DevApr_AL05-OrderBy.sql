/* ORDER BY - Ordena��o os resultados de uma coluna por ordem crescente ou decrescente */
SELECT *
FROM Person.Person
ORDER BY FirstName asc;

-- Misturando um poucos os comandos
SELECT TOP 2000 *
FROM Person.Person
ORDER BY FirstName asc;

SELECT *
FROM Person.Person
ORDER BY LastName desc;

-- Ordena��o do Nome de forma crescente e o apelido de forma decrescente
SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName asc, LastName desc;

-- Ordena��o pelo nome do meio
SELECT FirstName, LastName
FROM Person.Person
ORDER BY MiddleName asc; -- � poss�vel a ordena��o de uma coluna que n�o foi selecionada.

/* DESAFIO 01
Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato */
SELECT *
FROM Production.Product; -- ProductId, ListPrice

-- S� para verificar de facto que fica o mais caro para o mais barato, mostrarei tb a tabela ListPrice, mas n�o � necess�rio para a pergunta em quest�o
SELECT TOP 10 ProductId, ListPrice 
FROM Production.Product
ORDER BY ListPrice desc;

/* DESAFIO 02
Obter o nome e n�mero do produtos que t�m ProductId entre 1 e 4 */
SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductId asc;

 