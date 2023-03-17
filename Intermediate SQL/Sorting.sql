-- Sorting
SELECT release_year, duration, title
FROM films
ORDER BY release_year, duration;

-- Groupby
SELECT release_year, COUNT(*) AS film_count
FROM films
GROUP BY release_year;