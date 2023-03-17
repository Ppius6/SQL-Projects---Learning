-- The LIKE and NOT LIKE operators can be used to find records that either match or do not match a specified pattern, respectively. They can be coupled with the wildcards % and _. The % will match zero or many characters, and _ will match a single character.
-- Select the names that start with B
SELECT title
FROM films
WHERE title LIKE 'B%';

-- Second letter as r
SELECT title
FROM films
WHERE title LIKE '_r%';

-- Title that does not start with A
SELECT title
FROM films
WHERE title NOT LIKE 'A%';