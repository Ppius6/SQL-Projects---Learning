-- Inner join with the cities table on the left and the countries table on the right
SELECT *
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

-- Select name fields (with alias) and region 
SELECT cities.name AS city, countries.country_name AS country, region 
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

-- Joining with aliased tables
SELECT c.code AS country_code, country_name, year, inflation_rate
FROM countries as c
INNER JOIN economies as e 
ON c.code = e.code;
 
-- USING in action
SELECT c.country_name AS country, l.name AS language, official
FROM countries AS c 
INNER JOIN languages as l 
USING(code)

-- Inner Join and Inspect the relationship
SELECT c.country_name AS country, l.name AS language
FROM countries as c 
INNER JOIN languages as l 
USING(code);

-- Re-arranging the statements
SELECT l.name AS language, c.country_name AS country
FROM countries as c
INNER JOIN languages as l
USING(code)
ORDER BY language;

-- Joining Multiple Tables
SELECT country_name, year, fertility_rate
FROM countries as c 
INNER JOIN populations AS p 
ON c.code = p.country_code

-- Chaining another inner join to the previous query
SELECT country_name, e.year, fertility_rate, unemployment_rate
FROM countries as c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON e.code = c.code

-- Multi-table Joins
SELECT name, e.year, fertility_rate, unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code
-- Add an additional joining condition such that you are also joining on year
AND p.year = e.year