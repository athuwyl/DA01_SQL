--ex1: hackerank-revising-the-select-query.
select name
from city
where population > 120000 and countrycode = 'USA'

--ex2: hackerank-japanese-cities-attributes.
select * from city
where countrycode = 'JPN';

--ex3: hackerank-weather-observation-station-1.
select city, state from station

--ex4: hackerank-weather-observation-station-6.
select distinct city from station
where city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like'u%'

--ex5: hackerank-weather-observation-station-7.
select distinct city from station
where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like'%u'

--ex6: hackerank-weather-observation-station-9.
select distinct city from station
where not (city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like'u%')


--ex7: hackerank-name-of-employees.
select name from employee
order by name 

--ex8: hackerank-salary-of-employees.
select name from employee
where salary > 2000 and months < 10
order by employee_id

--ex9: leetcode-recyclable-and-low-fat-products.
select product_id from products
where low_fats = 'Y' and recyclable = 'Y'

--ex10: leetcode-find-customer-referee.
select name from customer
where referee_id != 2 or referee_id is null

--ex11: leetcode-big-countries.
select name, population, area from world
where area > 3000000 or population > 25000000

--ex12: leetcode-article-views.
select distinct author_id as id from views
where author_id = viewer_id
order by id

--ex13: datalemur-tesla-unfinished-part.
SELECT part, assembly_step FROM parts_assembly
where finish_date is null

--ex14: datalemur-lyft-driver-wages.
select * from lyft_drivers
where yearly_salary <= 30000 or yearly_salary > 70000

--ex15: datalemur-find-the-advertising-channel.
select * from uber_advertising
where money_spent > 100000
