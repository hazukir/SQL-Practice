-- IN � usado junto com WHERE, para verificar se um valor correspondem com qualquer valor passado na lista de valores.
/* The IN operator allows you to specify multiple values in a WHERE clause. The IN operator is a shorthand for multiple OR conditions */

-- Obter BusinessId das pessoas com BId 2, 7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13);
-- � sempre ideal usar o IN do que usar a solu��o de OR abaixo explicado. ele � mais r�pido

-- A outra solu��o seria usar OR para separar cada valor requerido mas este resulta em mais linhas de c�digo.
SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13; -- Mesmo resultado que o de cima mas o c�digo n�o � enxuto como o uso de "IN"
