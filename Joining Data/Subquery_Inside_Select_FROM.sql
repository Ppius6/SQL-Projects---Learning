/* SELECT countries.country_name AS country,
    (SELECT COUNT (*)
    FROM cities
    WHERE countries.code = cities.country_code) AS cities_num
FROM countries
ORDER BY cities_num DESC, country
LIMIT 9; */

-- Subquery inside FROM
-- a query that groups by each country code from languages, and counts the languages spoken in each country as lang_num.
SELECT code, COUNT(name) AS lang_num
FROM languages
GROUP BY code;

-- Select local_name from countries, with the aliased lang_num from your subquery (which has been nested and aliased for you as sub)
SELECT local_name, lang_num
FROM countries
CROSS JOIN (SELECT code, COUNT(name) AS lang_num
      FROM languages
      GROUP BY code) AS sub
WHERE countries.code = sub.code
ORDER BY lang_num DESC;

-- Select country code, inflation_rate, and unemployment_rate from economies.
-- Filter code for the set of countries which do not contain the words "Republic" or "Monarchy" in their gov_form.
SELECT code, inflation_rate, unemployment_rate
FROM economies
WHERE year = 2015 
AND code NOT IN (SELECT code
                 FROM countries
                 WHERE gov_form LIKE '%Republic%' OR gov_form LIKE '%Monarchy%')
ORDER BY inflation_rate DESC;

-- determine the top 10 capital cities in Europe and the Americas by city_perc
SELECT name, country_code, city_proper_pop, metroarea_pop, 
(city_proper_pop / metroarea_pop * 100) AS city_perc
FROM cities
WHERE name IN 
            (SELECT capital
             FROM countries
             WHERE (continent = 'Europe' 
             OR continent LIKE '%America'))
AND metroarea_pop IS NOT NULL
ORDER BY city_perc DESC
LIMIT 10;
            