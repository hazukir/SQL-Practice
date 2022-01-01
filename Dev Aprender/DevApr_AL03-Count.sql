-- Count
-- Reetorna a contagem de linhas totais ou com algumas condi��es
SELECT COUNT(*)
FROM Person.Person;

-- Retorna o total das linhas da coluna Title
SELECT COUNT(Title)
FROM Person.Person;

-- Buscar apenas tabalas onde n�o h� valores nulos
SELECT COUNT(DISTINCT title)
FROM Person.Person;


/*
DESAFIO 1
Quantos produtos temos cadastrados em nossa tabela de produtos
(production.product)
*/
SELECT COUNT(*)
FROM Production.Product; -- retorn 504 valores
/*
DESAFIO 2
Quantos valores em termos de tamanho temos cadastrados na tabela de produtos
(production.product)
*/
SELECT COUNT(Size)
FROM Production.Product; -- 201 valores

/*
Quantos Tamanhos �nicos de produtos cadastrado na tabela de produtos
(production.product)
*/
 SELECT COUNT(DISTINCT Size)
 FROM Production.Product; -- retorna 16 valores

