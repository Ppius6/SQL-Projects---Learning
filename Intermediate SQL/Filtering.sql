SELECT film_id, imdb_score
FROM reviews
WHERE imdb_score > 7.0
LIMIT 10;

SELECT COUNT(*) AS films_over_100k_votes
FROM reviews
WHERE num_votes > 100000;

-- Using AND
SELECT title, release_year 
FROM films
WHERE language = 'German' 
    AND release_year > 2000
    AND release_year < 2010;

-- Using OR
SELECT title, release_year
FROM films
WHERE release_year = 2000
    OR release_year = 2010;

-- Using BETWEEN
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 2000 AND 2010;