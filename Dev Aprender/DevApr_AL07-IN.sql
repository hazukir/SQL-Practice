-- IN é usado junto com WHERE, para verificar se um valor correspondem com qualquer valor passado na lista de valores.
/* The IN operator allows you to specify multiple values in a WHERE clause. The IN operator is a shorthand for multiple OR conditions */

-- Obter BusinessId das pessoas com BId 2, 7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13);
-- é sempre ideal usar o IN do que usar a solução de OR abaixo explicado. ele é mais rápido

-- A outra solução seria usar OR para separar cada valor requerido mas este resulta em mais linhas de código.
SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13; -- Mesmo resultado que o de cima mas o código não é enxuto como o uso de "IN"
