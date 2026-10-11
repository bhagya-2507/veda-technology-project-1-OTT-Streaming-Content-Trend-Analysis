-- OTT Streaming Content Trend Analysis
-- SQL queries for the Netflix Titles dataset

-- 1. Total titles
SELECT COUNT(*) AS total_titles
FROM netflix_titles;

-- 2. Movies vs TV Shows
SELECT type, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type
ORDER BY total_titles DESC;

-- 3. Titles by release year
SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year DESC;

-- 4. Top content ratings
SELECT rating, COUNT(*) AS total_titles
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total_titles DESC
LIMIT 10;

-- 5. Most common movie runtimes
SELECT
    CAST(REPLACE(duration, ' min', '') AS INTEGER) AS runtime_minutes,
    COUNT(*) AS total_movies
FROM netflix_titles
WHERE type = 'Movie'
  AND duration LIKE '% min'
GROUP BY runtime_minutes
ORDER BY total_movies DESC
LIMIT 10;

-- 6. TV Shows by season count
SELECT duration, COUNT(*) AS total_shows
FROM netflix_titles
WHERE type = 'TV Show'
  AND duration IS NOT NULL
GROUP BY duration
ORDER BY total_shows DESC;

-- 7. Titles added by year
SELECT
    CAST(strftime('%Y', date_added) AS INTEGER) AS year_added,
    COUNT(*) AS titles_added
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY strftime('%Y', date_added)
ORDER BY year_added;

-- 8. Recent content by type
SELECT release_year, type, COUNT(*) AS total_titles
FROM netflix_titles
WHERE release_year >= 2015
GROUP BY release_year, type
ORDER BY release_year, type;
