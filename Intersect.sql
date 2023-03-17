-- Return all cities with the same name as a country
SELECT name
FROM cities
INTERSECT
SELECT country_name
FROM countries;