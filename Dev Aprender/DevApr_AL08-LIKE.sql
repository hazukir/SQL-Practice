-- LIKE - Encontar no BD o nome de uma pessoa cujo tinha algo do tipo == ovi....alguma coisa. Esse comando n�o � case sensitive
-- Maiusculo ou minisculo resultam no msm valor
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%'; -- % SIGNIFICA QUALQUER VALOR/CARACTERE QUE V�M DEPOIS DO VALOR EXPLICITADO

-- Busca pessoas com "to" no final do nome. o % � usado no inicio da condi��o
SELECT *
FROM Person.Person
WHERE FirstName like '%to'; -- significa depois de % tem que aparacer "to"

-- para quando n�o temos certeza em que posi��o est� os valores, usamos '%VALOR%'
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%'; -- vai buscar todos os nomes onde aparecem o "essa"

-- usdo de _ para fazer consultas
SELECT * 
FROM Person.Person
WHERE FirstName like '%ro_'; -- sabemos da exist�ncia de nomes com "ro" mas n�o sabemos o que vem a seguir.
-- Mas o _ busca apenas um caractere ap�s. Por exemplo no nome num conjunto de nome como (Roy, Ronald, Robert, etc) ele mostraria apenas
-- aqueles que tem um caractere ap�s o "ro", que nesse caso � Roy.
