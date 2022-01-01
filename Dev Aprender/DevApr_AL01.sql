
-- COMANDO SELECT

SELECT *
FROM person.person; -- seleciona tudo

SELECT Title FROM person.Person; -- mostra apenas dado especifico  da tabela Person (pessoas)

SELECT *
FROM person.EmailAddress; -- informação da tabela de Emails

SELECT FirstName, LastName -- Mostrar todos os nomes e os apelidos que estão na tabela person e na coluna person
FROM person.Person;