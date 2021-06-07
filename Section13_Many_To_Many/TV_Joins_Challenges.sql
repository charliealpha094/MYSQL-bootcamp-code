-- Done by Carlos Amaral (2021/03/26)

-- TV JOINS CHALLENGE 1
/* Join series table with the reviews table, so you can get a table with a 
title column for the series and it's corresponding rating. */
SELECT title, rating FROM series
JOIN reviews 
ON series.id= reviews.series_id;


-- TV JOINS CHALLENGE 2
/* Get a table with a title column and the corresponding average rating to 
each group of movies */
SELECT title, AVG(rating) AS avg_rating
FROM series JOIN reviews
ON series.id=reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;


-- TV JOINS CHALLENGE 3
/* Get a table with a first_name column, last_name and rating given by each
reviewer */
SELECT first_name, last_name FROM reviewers
INNER JOIN reviews
ON reviewers.id=reviews.series_id;


-- TV JOINS CHALLENGE 4
/* Get a table with a column for the unreviwed series as unreviwed_series */
SELECT title AS unreviwed_series
FROM series LEFT JOIN reviews
ON series.id=reviews.series_id
WHERE rating IS NULL;


-- TV JOINS CHALLENGE 5
/* Get a table with a column for genre and another for average rating as 
avg_rating. Retrieve the average rating for each genre. */
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating
FROM series INNER JOIN reviews
ON series.id=reviews.series_id
GROUP BY genre;


-- TV JOINS CHALLENGE 6
/* Get a table with a column for first_name, last_name, count of reviews, 
the minimum, maximum revews, the average review and the status
(active/inactive) */
SELECT first_name, last_name, COUNT(rating) AS COUNT,
IFNULL(MIN(rating), 0) AS MIN,
IFNULL(MAX(rating), 0) AS MAX,
ROUND(IFNULL(AVG(rating), 0), 2) AS AVG,
IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers LEFT JOIN reviews ON reviewers.id=reviews.reviewer_id
GROUP BY reviewers.id;


-- TV JOINS CHALLENGE 7
/* Get a table with title column, a rating one and also a reviewr column with first 
and last name of each reviewer. */
SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviewers INNER JOIN reviews
ON reviewers.id=reviews.reviewer_id
INNER JOIN series ON series.id=reviews.series_id
ORDER BY title;

