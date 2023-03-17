-- Filter with HAVING
SELECT country, COUNT(DISTINCT certification) AS certification_count
FROM films
GROUP BY country
HAVING COUNT(DISTINCT certification) > 10;

-- HAVING and Sorting
SELECT country, ROUND(AVG(budget),2) AS Average_budget
FROM films
GROUP BY country
HAVING ROUND(AVG(budget),2) > 1000000000
ORDER BY Average_budget DESC;

-- ALL TOGETHER
SELECT release_year, AVG(budget) AS average_budget, AVG(gross) AS Average_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
ORDER BY Average_gross DESC
LIMIT 1;