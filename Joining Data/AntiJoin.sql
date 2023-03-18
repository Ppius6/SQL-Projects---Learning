-- A query to return the code and name for all countries in the continent of Oceania from the countries table.
SELECT code,  country_name
FROM countries
WHERE continent IN 
    (SELECT continent
    FROM countries
    WHERE continent = 'Oceania');

-- An additional filter to return every country code that is not included in the currencies table
SELECT code, country_name
FROM countries
WHERE continent = 'Oceania'
AND code NOT IN
    (SELECT code
    FROM currencies);