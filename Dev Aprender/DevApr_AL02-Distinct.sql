-- O comando DISTINCT serve para omitir dados duplicados de uma tabela

SELECT FirstName
FROM person.Person;

SELECT DISTINCT FirstName -- Ao aplicar esse comando, resultado da querie mostra um valor muito abaixo do original
FROM person.Person;

-- EX: Quantos apelidos únicos temos na tabela person.Person? 

SELECT DISTINCT LastName
FROM person.Person;  -- O resultado é 1206 linhas com Apelidos únicos.
