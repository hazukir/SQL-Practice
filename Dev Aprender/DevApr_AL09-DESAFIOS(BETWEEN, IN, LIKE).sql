/* DESAFIO 01 - Quantos produtos temos cadastrados no sistema/BD que custam mais do que 1500 d�lares? */
SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;

/* DESAFIO 02 - Quantas pessoas temos com o apelido que come�a com a letra P? */
-- Essa solu��o os apelidos e outras tabelas
SELECT LastName
FROM Person.Person
WHERE LastName LIKE 'P%';

-- Esta solu��o mostra apenas a contagem dos valores onde aparecem os apelidos que come�am com a letra P.
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%';

/* DESAFIO 03 - Em quantas cidades �nicas est�o cadastrados nossos clientes? */
SELECT COUNT (DISTINCT City)
FROM Person.Address; -- resulta em 575

/* - DESAFIO 04 - Quais s�o as cidades �nicas que temos cadastrados em nosso sistema? */
SELECT DISTINCT City
FROM Person.Address;

/* - DESAFIO 05 - Quantos Produtos vermelhos tem pre�o entre 500 e 1000 d�lares */
SELECT Name
FROM Production.Product
WHERE Color IN ('Red') AND ListPrice BETWEEN 500 AND 1000; -- s�o 11 produtos. Esse c�digo mostra quais s�o esses produtos.

SELECT COUNT(Name)
FROM Production.Product
WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000; -- vai retornar apenas 11 valores como resultado final

/* DESAFIO 06 - Quantos produtos cadastrados tem a palavra 'road' no nome deles? */

SELECT COUNT (*)
FROM Production.Product
WHERE Name LIKE '%road%';

-- E para ver esses produtos, usamos o seguinte c�digo
SELECT Name 
FROM Production.Product
WHERE Name LIKE '%road%';

