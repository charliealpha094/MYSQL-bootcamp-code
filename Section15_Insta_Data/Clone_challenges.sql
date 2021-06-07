-- Done by Carlos Amaral (2021/04/10)

/* CLONE CHALLENGE 1
Find the 5 longest users */
DESC users;

SELECT username, created_at FROM users
ORDER BY created_at DESC limit 5;


/* CLONE CHALLENGE 2
What day of the week do most users register on? */
SELECT DAYNAME(created_at) AS day_of_week,
COUNT(*) AS total
FROM users GROUP BY day_of_week
ORDER BY total
DESC LIMIT 3;


/* CLONE CHALLENGE 3
Find users who have never posted a photo */
SELECT username FROM users
LEFT JOIN photos
ON users.id=photos.user_id
WHERE photos.id IS NULL;


/* CLONE CHALLENGE 4
Identify most popular photo (and user who created it) */
SELECT username, photos.id, photos.image_url,
COUNT(*) AS total FROM photos
INNER JOIN likes
ON likes.photo_id=photos.id
INNER JOIN users
ON photos.user_id=users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


/* CLONE CHALLENGE 5
How many times does the average user post? */
SELECT COUNT(id)/(SELECT COUNT(id) FROM users)
AS avg_posts FROM photos;


/* CLONE CHALLENGE 6
What are the top 5 most commonly used hashtags?
We need to connect hashtags with tags and photo_tags */
SELECT tags.tag_name,
COUNT(*) AS total FROM photo_tags
JOIN tags ON photo_tags.tag_id=tags.id
GROUP BY tags.id
ORDER BY total DESC 
LIMIT 5;


/* CLONE CHALLENGE 7
Find users who have liked every single photo on the site */
SELECT username, COUNT(*) as num_likes
FROM users INNER JOIN likes
ON users.id=likes.user_id
GROUP BY likes.user_id
HAVING num_likes=(SELECT COUNT(*) FROM photos);
