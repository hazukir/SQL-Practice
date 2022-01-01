/* ORDER BY - Ordenação os resultados de uma coluna por ordem crescente ou decrescente */
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

-- Ordenação do Nome de forma crescente e o apelido de forma decrescente
SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName asc, LastName desc;

-- Ordenação pelo nome do meio
SELECT FirstName, LastName
FROM Person.Person
ORDER BY MiddleName asc; -- É possível a ordenação de uma coluna que não foi selecionada.

/* DESAFIO 01
Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato */
SELECT *
FROM Production.Product; -- ProductId, ListPrice

-- Só para verificar de facto que fica o mais caro para o mais barato, mostrarei tb a tabela ListPrice, mas não é necessário para a pergunta em questão
SELECT TOP 10 ProductId, ListPrice 
FROM Production.Product
ORDER BY ListPrice desc;

/* DESAFIO 02
Obter o nome e número do produtos que têm ProductId entre 1 e 4 */
SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductId asc;

 