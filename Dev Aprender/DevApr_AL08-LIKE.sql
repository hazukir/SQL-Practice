-- LIKE - Encontar no BD o nome de uma pessoa cujo tinha algo do tipo == ovi....alguma coisa. Esse comando não é case sensitive
-- Maiusculo ou minisculo resultam no msm valor
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%'; -- % SIGNIFICA QUALQUER VALOR/CARACTERE QUE VÊM DEPOIS DO VALOR EXPLICITADO

-- Busca pessoas com "to" no final do nome. o % é usado no inicio da condição
SELECT *
FROM Person.Person
WHERE FirstName like '%to'; -- significa depois de % tem que aparacer "to"

-- para quando não temos certeza em que posição está os valores, usamos '%VALOR%'
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%'; -- vai buscar todos os nomes onde aparecem o "essa"

-- usdo de _ para fazer consultas
SELECT * 
FROM Person.Person
WHERE FirstName like '%ro_'; -- sabemos da existência de nomes com "ro" mas não sabemos o que vem a seguir.
-- Mas o _ busca apenas um caractere após. Por exemplo no nome num conjunto de nome como (Roy, Ronald, Robert, etc) ele mostraria apenas
-- aqueles que tem um caractere após o "ro", que nesse caso é Roy.
