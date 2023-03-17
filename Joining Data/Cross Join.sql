-- Cross Join
SELECT c.country_name AS country, l.name AS language
FROM countries AS c
CROSS JOIN languages AS l
WHERE c.code IN ('PAK','IND')
AND l.code IN ('PAK','IND');

-- Cross Join
SELECT c.country_name AS country, region, life_expectancy AS life_exp
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
WHERE year = 2010
ORDER BY life_exp
LIMIT 5;

