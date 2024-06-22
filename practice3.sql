— Exercise 1:
SELECT Name FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID

— Exercise 2:
SELECT user_id,
CONCAT(UPPER(LEFT(name,1)), LOWER(RIGHT(name,length(name) - 1))) AS name
FROM Users
ORDER BY user_id

— Exercise 3:
SELECT manufacturer,
'$' || round(sum(total_sales)/1000000, 0) ||' '||'million'
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer;

— Exercise 4:
SELECT
EXTRACT (MONTH FROM submit_date) AS mth,
product_id,
round(avg(stars),2) AS avg_stars
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id

— Exercise 5:
SELECT
sender_id,
count(message_id) AS message_count
FROM messages
WHERE EXTRACT(month FROM sent_date) = 8 AND EXTRACT (year FROM sent_date) = 2022
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2

— Exercise 6:
﻿SELECT tweet_id FROM Tweets
WHERE length(content) > 15

— Exercise 7:
SELECT activity_date AS day, COUNT(DISTINCT(user_id)) AS active_users
FROM Activity
WHERE (activity_date > '2019-06-27' AND activity_date < '2019-07-28')
GROUP BY activity_date;

— Exercise 8:
SELECT 
count(id) as number_employee 
FROM employees
WHERE EXTRACT (month FROM joining_date) between 1 and 7
and EXTRACT (year FROM joining_date) = 2022

— Exercise 9:
SELECT POSITION ('a' IN first_name) AS position 
FROM worker 
WHERE first_name = 'Amitah'

— Exercise 10:
SELECT SUBSTRING (title, length(winery)+2,4)
FROM winemag_p2
WHERE country = 'Macedonia'

