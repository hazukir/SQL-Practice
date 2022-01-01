/* DESAFIO 01 - Quantos produtos temos cadastrados no sistema/BD que custam mais do que 1500 dólares? */
SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;

/* DESAFIO 02 - Quantas pessoas temos com o apelido que começa com a letra P? */
-- Essa solução os apelidos e outras tabelas
SELECT LastName
FROM Person.Person
WHERE LastName LIKE 'P%';

-- Esta solução mostra apenas a contagem dos valores onde aparecem os apelidos que começam com a letra P.
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%';

/* DESAFIO 03 - Em quantas cidades únicas estão cadastrados nossos clientes? */
SELECT COUNT (DISTINCT City)
FROM Person.Address; -- resulta em 575

/* - DESAFIO 04 - Quais são as cidades únicas que temos cadastrados em nosso sistema? */
SELECT DISTINCT City
FROM Person.Address;

/* - DESAFIO 05 - Quantos Produtos vermelhos tem preço entre 500 e 1000 dólares */
SELECT Name
FROM Production.Product
WHERE Color IN ('Red') AND ListPrice BETWEEN 500 AND 1000; -- são 11 produtos. Esse código mostra quais são esses produtos.

SELECT COUNT(Name)
FROM Production.Product
WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000; -- vai retornar apenas 11 valores como resultado final

/* DESAFIO 06 - Quantos produtos cadastrados tem a palavra 'road' no nome deles? */

SELECT COUNT (*)
FROM Production.Product
WHERE Name LIKE '%road%';

-- E para ver esses produtos, usamos o seguinte código
SELECT Name 
FROM Production.Product
WHERE Name LIKE '%road%';

