/* BETWEEN � usado para encontrar valor entre valor m�nimo e valor m�ximo */
-- BETWEEN VAL MIN AND VAL MAX ~ >= VAL MIN AND <= VAL MAX

-- Listagem de produtos com pre�o no intervalo 1000-1500
SELECT *
FROM Production.Product
WHERE ListPrice Between 1000 and 1500;

-- Listagem de produtos com os pre�os que est�o fora do intervalo 1000-1500
SELECT *
FROM Production.Product
WHERE ListPrice NOT Between 1000 and 1500;

-- Pessoas contratadas entre anos de 2009 e 2010
SELECT *
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/01/01' -- O uso da data deve ser sempre ANO/M�S/DIA
Order by HireDate;  -- o uso de "asc" aqui � opcional. Se fosse de 2010 para 2009, o uso de "desc" era obrigat�rio
