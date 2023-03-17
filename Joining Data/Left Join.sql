SELECT c1.name AS city, code, 
c2.country_name AS country, region, city_proper_pop
FROM cities AS c1
LEFT JOIN countries AS c2
ON c1.country_code = c2.code */

-- Building on the LEFT JOIN
SELECT country_name, region, gdp_percapita 
FROM countries AS c 
LEFT JOIN economies AS e 
ON c.code = e.code
WHERE year = 2010 

-- Select region, and average gdp_percapita as avg_gdp
SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
ON c.code = e.code
WHERE year = 2010
GROUP BY region
ORDER BY AVG(gdp_percapita) DESC
LIMIT 10
 

