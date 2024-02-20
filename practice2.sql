--ex1: hackerrank-weather-observation-station-3.
select distinct city
from station
where id%2 = 0

  -ex2: hackerrank-weather-observation-station-4.
select count(city) - count(distinct city)
from station

--ex3: hackerrank-the-blunder.
  
--ex4: datalemur-alibaba-compressed-mean.
SELECT 
round(cast(sum(item_count*order_occurrences)/sum(order_occurrences) as decimal),1) as mean
FROM items_per_order;


--ex5: datalemur-matching-skills.
SELECT candidate_id
from candidates
where skill IN ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill) = 3

--ex6: datalemur-verage-post-hiatus-1.
SELECT user_id,
DATE(max(post_date)) - DATE(min(post_date)) as max_between
from posts
where post_date >= '2021-01-01' and  post_date <'2022-01-01'
GROUP BY user_id
HAVING count(post_id) > 2

--ex7: datalemur-cards-issued-difference.
SELECT card_name, 
max(issued_amount) - min(issued_amount)
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY max(issued_amount) - min(issued_amount) desc

--ex8: datalemur-non-profitable-drugs.
SELECT manufacturer, COUNT(drug) as drug_count,
abs(sum(total_sales - cogs)) as total_loss
FROM pharmacy_sales
WHERE total_sales - cogs <= 0
GROUP BY manufacturer
ORDER BY abs(sum(total_sales - cogs)) DESC

--ex9: leetcode-not-boring-movies.
SELECT * 
FROM cinema
WHERE description NOT LIKE 'boring'
HAVING id%2 = 1
ORDER BY rating DESC

--ex10: leetcode-number-of-unique-subject.
SELECT teacher_id,
COUNT(DISTINCT subject_id) as cnt
FROM Teacher
GROUP BY teacher_id
HAVING COUNT(DISTINCT subject_id)

--ex11: leetcode-find-followers-count.
SELECT user_id, 
COUNT(DISTINCT follower_id) as followers_count
FROM Followers
GROUP BY user_id
HAVING COUNT(DISTINCT follower_id)
ORDER BY COUNT(DISTINCT follower_id)

--ex12:leetcode-classes-more-than-5-students.
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) > 5
