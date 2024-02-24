ex1: hackerrank-more-than-75-marks.
SELECT name
FROM STUDENTS
WHERE marks > 75
ORDER BY RIGHT(name, 3), ID
  
ex2: leetcode-fix-names-in-a-table.
select user_id, CONCAT(UPPER(LEFT(name, 1)), LOWER(RIGHT(name, length(name)- 1))) as name
FROM  Users
order by user_id
  
ex3: datalemur-total-drugs-sales.
SELECT  manufacturer, CONCAT('$', ROUND(sum(total_sales)/1000000, 0), ' million') as sales
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY ROUND(sum(total_sales)/1000000, 0) DESC, manufacturer DESC

ex4: avg-review-ratings.
SELECT EXTRACT(MONTH from submit_date) as mnth, product_id, ROUND(avg(stars), 2) as average_stars 
FROM reviews
GROUP BY EXTRACT(MONTH from submit_date), product_id
ORDER BY EXTRACT(MONTH from submit_date), product_id
  
ex5: teams-power-users.
SELECT sender_id, COUNT(message_id)
FROM messages
WHERE EXTRACT(Month from sent_date) = 8 AND EXTRACT(YEAR from sent_date) = 2022
GROUP BY sender_id
ORDER BY COUNT(message_id) DESC
LIMIT 2

ex6: invalid-tweets.
select tweet_id 
from tweets
where length(content) > 15
  
ex7: user-activity-for-the-past-30-days.

  
ex8: number-of-hires-during-specific-time-period.
select count(id), extract(month from joining_date) as month
from employees
where joining_date between '2022-01-01' and '2022-08-01'
group by extract(month from joining_date)
  
ex9: positions-of-letter-a.
select position('a' in first_name) 
from worker
where first_name = 'Amitah'

ex10: macedonian-vintages.
select substring(title, length(winery)+ 2, 4)
from winemag_p2
where country = 'Macedonia'
