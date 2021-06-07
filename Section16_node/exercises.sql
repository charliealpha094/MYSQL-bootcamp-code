/* Done by Carlos Amaral (2021/05/05) */

/* Exercises Section 16 - node */

-- Find earliest date a user joined
SELECT MIN(created_at) AS earliest_date FROM users;


-- Find Email of the first (earliest) user
SELECT * FROM users 
WHERE created_at = (SELECT MIN(created_at) FROM users);


-- Retrieve all users according to the month they joined
SELECT MONTHNAME(created_at) AS month,
COUNT(*) AS count 
FROM users
GROUP BY month
ORDER BY month DESC;


-- Count Number of Users with yahoo Emails
SELECT COUNT(*) AS yahoo_users
FROM users
WHERE email LIKE '%yahoo.com';


-- Calculate Total Number of users for each email host
SELECT CASE WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
    WHEN email LIKE '%@gmail.com' THEN 'gmail'
    WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
    ELSE 'other' END AS provider,
    COUNT(*) AS total_users
    FROM users GROUP BY provider
    ORDER BY total_users DESC;
