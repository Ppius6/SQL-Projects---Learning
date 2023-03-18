-- Select average life_expectancy from the populations table
SELECT AVG(life_expectancy) 
FROM populations
WHERE year = 2015;

-- Filter for only those populations where life expectancy is 1.15 times higher than average
SELECT *
FROM populations
WHERE life_expectancy > 1.15 * (SELECT AVG(life_expectancy) 
                                FROM populations
                                WHERE year = 2015);

-- Return the name, country_code and urbanarea_pop for all capital cities (not aliased).
SELECT name, country_code, urbanarea_pop
FROM cities
WHERE name IN
    (SELECT capital
     FROM countries)
ORDER BY urbanarea_pop DESC;