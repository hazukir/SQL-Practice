-- Where
-- Buscar As linhas onde temos pessoas com apelidos = Miller e nome = Anna
SELECT *
FROM Person.Person
WHERE LastName = 'Miller' and FirstName = 'Anna'

-- Buscar os produtos onde as cores ou são Blue ou Black
SELECT *
FROM Production.Product
WHERE Color = 'Blue' or Color = 'Black';

-- Listar produtos onde o preço é maior do que 1500
SELECT *
FROM Production.Product
WHERE ListPrice >= 1500;

-- Listar produtos onde o preço é maior do que 1500 e menor do que 5000
SELECT *
FROM Production.Product
WHERE ListPrice >= 1500 and ListPrice < 3000;

-- Buscar todas as cores menos o Red
SELECT *
FROM Production.Product
WHERE Color <> 'Red';

-- DESAFIO 1
/*
A equipa de produção precisa do nome de todas as peças que pesam mais do que 500KG mas não mais de 700KG para a inspeção
*/
SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight <= 700;

-- DESAFIO 2
/*
Foi pedido pela departamento de marketing uma relação de todos os empregados que são casados, solteiros e assalariados
*/
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' and SalariedFlag = 1;
-- 1 significa True aka Verdadeiro. 0 significa False aka Falso

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 's' and SalariedFlag = 1;

-- DESAFIO 3
/*
Um utilizador chamado Peter Krebs está devendo um pagamento. Consiga o email dele para que possamos enviar uma cobrança!
Dica = usar tabela Person.Person e depois Person.Emailaddress E depois filtrar po BusinessID do Peter Krebs
*/
SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs';

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;
