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
SELECT customer_contracts.customer_id 
FROM customer_contracts
JOIN products
ON customer_contracts.product_id = products.product_id
where products.product_category IN ('Analytics', 'Compute', 'Containers')
group by customer_contracts.customer_id
having count(DISTINCT products.product_category) = 3
  2
ex5: leetcode-the-number-of-employees-which-report-to-each-employee.
select mng.employee_id, mng.name, COUNT(emp.employee_id) as reports_count, ROUND(AVG(emp.age)) as average_age
FROM Employees emp
JOIN Employees as mng
ON emp.reports_to = mng.employee_id
WHERE emp.reports_to IS NOT null
GROUP BY mng.employee_id
ORDER BY employee_id 

ex6: leetcode-list-the-products-ordered-in-a-period.
SELECT Products.product_name, SUM(Orders.unit) as unit
FROM Products
JOIN Orders
ON Products.product_id = Orders.product_id
WHERE Orders.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY Products.product_id
HAVING SUM(Orders.unit) >= 100

ex7: leetcode-sql-page-with-no-likes.
SELECT pages.page_id
FROM pages
LEFT JOIN page_likes
ON pages.page_id = page_likes.page_id
WHERE page_likes.page_id IS NULL
ORDER BY pages.page_id 
