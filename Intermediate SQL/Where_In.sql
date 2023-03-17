SELECT  title, release_year
FROM films
WHERE release_year IN (2000, 2010)
AND duration > 120

SELECT title, language
FROM films
WHERE language IN ('English', 'French', 'German');