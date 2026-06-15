-- Display title and type
SELECT title, type
FROM netflix_titles;

-- Get all movies
SELECT *
FROM netflix_titles
WHERE type = 'Movie';

-- Content released after 2020
SELECT *
FROM netflix_titles
WHERE release_year > 2020;

-- Content from India
SELECT *
FROM netflix_titles
WHERE country = 'India';

-- First 5 records ordered by release year
SELECT *
FROM netflix_titles
ORDER BY release_year
LIMIT 5;

-- Content rated R
SELECT *
FROM netflix_titles
WHERE rating = 'R';

-- Records with missing country information
SELECT *
FROM netflix_titles
WHERE country = '' OR country IS NULL;

-- Content longer than 90 minutes
SELECT *
FROM netflix_titles
WHERE duration_min > 90;

-- TV Shows added in 2019
SELECT *
FROM netflix_titles
WHERE date_added LIKE '2019%'
  AND type = 'TV Show';

-- Titles containing the word "love"
SELECT *
FROM netflix_titles
WHERE LOWER(title) LIKE '%love%';