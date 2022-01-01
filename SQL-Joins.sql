-- Select fields
Select c.name as country, c.continent, l.name as language, l.official
-- From countries (alias as c)
from countries as c
-- Join to languages (as l)
inner join languages as l
-- Match using code
using(code)


-- Self Joins - An example

SELECT name, continent, indep_year,
    CASE WHEN indep_year < 1900 THEN 'before 1900'
        WHEN indep_year <= 1930 THEN 'between 1900 and 1930'
        ELSE 'after 1930' END
        AS indep_year_group
FROM states
ORDER BY indep_year_group


/*
Join populations with itself ON country_code.
Select the country_code from p1 and the size field from both p1 and p2.
SQL won't allow same-named fields, so alias p1.size as size2010 and p2.size as size2015.
*/
-- Select fields with aliases
SELECT p1.country_code, p1.size as size2010, p2.size as size2015
-- From populations (alias as p1)
FROM populations as p1
  -- Join to itself (alias as p2)
  INNER JOIN populations as p2
    -- Match on country code
    USING(country_code)

/*
Notice from the result that for each country_code you have four entries laying out all combinations of 2010 and 2015.
Extend the ON in your query to include only those records where the p1.year (2010) matches with p2.year - 5 (2015 - 5 = 2010)
This will omit the three entries per country_code that you aren't interested in.
*/

-- Select fields with aliases
SELECT p1.country_code,
       p1.size AS size2010,
       p2.size AS size2015
-- From populations (alias as p1)
FROM populations as p1
  -- Join to itself (alias as p2)
  INNER JOIN populations as p2
    -- Match on country code
    ON p1.country_code = p2.country_code
        -- and year (with calculation)
        AND p1.year = p2.year - 5


/*
As you just saw, you can also use SQL to calculate values like p2.year - 5 for you. With two fields like size2010 and size2015, you may want to determine the percentage increase from one field to the next:
With two numeric fields A and B, the percentage growth from A to B can be calculated as (B - A) / A * 100.0
Add a new field to SELECT, aliased as growth_perc, that calculates the percentage population growth from 2010 to 2015 for each country, using p2.size and p1.size.
*/

SELECT p1.country_code,
       p1.size AS size2010,
       p2.size AS size2015,
       -- Calculate growth_perc
       ((p2.size - p1.size)/p1.size * 100.0) AS growth_perc
-- From populations (alias as p1)
FROM populations AS p1
  -- Join to itself (alias as p2)
  INNER JOIN populations AS p2
    -- Match on country code
    ON p1.country_code = p2.country_code
        -- and year (with calculation)
        AND p1.year = p2.year - 5;

/*
Often it's useful to look at a numerical field not as raw data, but instead as being in different categories or groups.
You can use CASE with WHEN, THEN, ELSE, and END to define a new grouping field.
Using the countries table, create a new field AS geosize_groupthat groups the countries into three groups:
•   If surface_area is greater than 2 million, geosize_group is 'large'.
•   If surface_area is greater than 350 thousand but not larger than 2 million, geosize_group is 'medium'.
•   Otherwise, geosize_group is 'small'.
*/

SELECT name, continent, code, surface_area,
    -- First case
    CASE WHEN surface_area > 2000000 THEN 'large'
        -- Second case
        WHEN surface_area > 350000 THEN 'medium'
        -- Else clause + end
        ELSE 'small' END
        -- Alias name
        AS geosize_group
-- From table
FROM countries;


-- Inner challenge - 1
SELECT country_code, size,
    -- First case
    CASE WHEN size > 50000000 THEN 'large'
        -- Second case
        WHEN size > 1000000 THEN 'medium'
        -- Else clause + end
        ELSE 'small' END
        -- Alias name (popsize_group)
        AS popsize_group
-- From table
FROM populations
-- Focus on 2015
WHERE year = 2015;

-- Inner Challenge - 2
SELECT country_code, size,
    CASE WHEN size > 50000000 THEN 'large'
        WHEN size > 1000000 THEN 'medium'
        ELSE 'small' END
        AS popsize_group
-- Into table
INTO pop_plus
FROM populations
WHERE year = 2015;

-- Select all columns of pop_plus
SELECT *
FROM pop_plus;


-- Inner Challenge - 3
-- Select fields
SELECT c.name, c.continent, c.geosize_group, p.popsize_group
-- From countries_plus (alias as c)
FROM countries_plus AS c
  -- Join to pop_plus (alias as p)
  INNER JOIN pop_plus AS p
    -- Match on country code
    ON c.code = p.country_code
-- Order the table
ORDER BY geosize_group ASC;
