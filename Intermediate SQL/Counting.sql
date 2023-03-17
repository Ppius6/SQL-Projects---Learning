-- Counting in SQL
SELECT DISTINCT COUNT(id) AS DISTINCT_USERS
FROM roles;

SELECT COUNT(id) AS USERS
FROM roles;

SELECT COUNT(DISTINCT country) AS Unique_Countries
FROM films;