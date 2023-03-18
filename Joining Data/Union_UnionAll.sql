-- Comparing global economies
SELECT *
FROM economies2015
UNION 
SELECT *
FROM economies2019
ORDER BY code, year;

-- Perform an appropriate set operation that determines all pairs of country code and year (in that order) from economies and populations, excluding duplicates.
Order by country code and year.
SELECT code, year 
FROM economies
UNION
SELECT country_code, year
FROM populations;

-- Amend the query to return all combinations including duplicates of country code and year in the economies and populations tables
SELECT code, year
FROM economies
UNION ALL
SELECT country_code, year
FROM populations
ORDER BY code, year;