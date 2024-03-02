ex1: datalemur-laptop-mobile-viewership.
SELECT 
COUNT(*) FILTER (WHERE device_type = 'laptop') AS laptop_views,
COUNT(*) FILTER (WHERE device_type = 'tablet' OR device_type = 'phone') AS mobile_views
FROM viewership
  
ex2: datalemur-triangle-judgement.
SELECT *,
CASE
    WHEN x+y>z AND x+z>y AND y+z>x THEN 'Yes'
ELSE 'No'
END as triangle
FROM Triangle 

ex3: datalemur-uncategorized-calls-percentage.
ex4: datalemur-find-customer-referee.
select name from customer
where referee_id != 2 or referee_id is null

ex5: stratascratch the-number-of-survivors.
SELECT
sum(CASE WHEN survived = 1 THEN 1 ELSE 0 END) as survivor, 
sum(CASE WHEN survived = 0 THEN 1 ELSE 0 END) as non_survivor,
    CASE
    WHEN pclass =  1 THEN 'first_class'
    WHEN pclass =  2 THEN 'second_class'
    WHEN pclass =  3 THEN 'third_class'
    END AS category
FROM titanic
GROUP BY category
