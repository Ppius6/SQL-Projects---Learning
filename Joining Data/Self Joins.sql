-- Compare a country to itself
-- Finding out how much the population has changed from 2010 to 2015. Done by self join.
SELECT p1.country_code, p1.size AS size_2010, p2.size AS size_2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code;

-- Compare a country to itself
SELECT 
	p1.country_code, 
    p1.size AS size2010, 
    p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code
WHERE p1.year = 2010
-- Filter such that p1.year is always five years before p2.year
    AND p1.year = p2.year-5

