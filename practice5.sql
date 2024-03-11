ex1: hackerrank-average-population-of-each-continent.
select COUNTRY.Continent, FLOOR(AVG(CITY.Population))
from Country
JOIN City
on country.code = city.countrycode
GROUP BY COUNTRY.Continent
ORDER BY FLOOR(AVG(CITY.Population))
  
ex2: datalemur-signup-confirmation-rate.
SELECT ROUND(CAST(COUNT(texts.email_id) AS DECIMAL)/(CAST(COUNT(emails.email_id) AS DECIMAL)), 2) 
AS confirmation_rate
FROM emails
LEFT JOIN texts
on emails.email_id = texts.email_id AND texts.signup_action = 'Confirmed'
  
ex3: datalemur-time-spent-snaps.
SELECT age_breakdown.age_bucket, ROUND(SUM(activities.time_spent) FILTER (WHERE activities.activity_type = 'open')/SUM(activities.time_spent) *100, 2) as opentime_avg, 
ROUND(SUM(activities.time_spent) FILTER(WHERE activities.activity_type = 'send')/SUM(activities.time_spent)*100, 2) as sendtime_avg
FROM activities 
JOIN age_breakdown
ON activities.user_id = age_breakdown.user_id
WHERE activities.activity_type IN ('open', 'send')
GROUP BY age_breakdown.age_bucket

ex4: datalemur-supercloud-customer.
ex5: leetcode-the-number-of-employees-which-report-to-each-employee.
ex6: leetcode-list-the-products-ordered-in-a-period.
ex7: leetcode-sql-page-with-no-likes.

