 create database online_retail;
 
 -- then retail table is imported using table data import wizard and then 
 -- DATA CLEANING is performed
 
-- First of all we will check null values  

SELECT * FROM retail
where
sale_date is null
or	
sale_time	is null
or
customer_id	is null
or
gender	is null
or
age	is null
or
category is null
or
quantiy	is null
or
price_per_unit	is null
or
cogs	is null
or
total_sale is null;

-- since there are no null values so we are good to go for data exploration
-- DATA EXPLORATION

select count(distinct(ï»¿transactions_id)) from retail;

select count(distinct(customer_id)) from retail;

select * from retail;

 -- Key Business Questions 
 
-- 1. Write a SQL query to retrieve all columns for sales made on '2022-11-05

SELECT 
    *
FROM
    retail
WHERE
    sale_date = '2022-11-05';

-- 2. Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:

SELECT 
    *
FROM
    retail
WHERE
    category = 'Clothing'
       AND quantiy >= 4
       and DATE_FORMAT(sale_date, '%Y-%m') = '2022-11';

-- 3. Write a SQL query to calculate the total sales (total_sale) for each category.

SELECT 
    category, SUM(total_sale)
FROM
    retail
GROUP BY category;

-- 4. Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

SELECT 
    category, ROUND(AVG(age), 0)
FROM
    retail
GROUP BY category;

-- 5. Write a SQL query to find all transactions where the total_sale is greater than 1000.

SELECT 
    *
FROM
    retail
WHERE
    total_sale >= 1000;

-- 6. Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

SELECT 
    gender, category, COUNT(ï»¿transactions_id)
FROM
    retail
GROUP BY gender , category
ORDER BY category;

-- 7. Write a SQL query to calculate the average sale for each month. Find out best selling month in each year

select *
from (
    select 
        round(avg(total_sale),2) as avg_sales,
        year(sale_date) as sale_year,
        month(sale_date) as sale_month,
        rank() over (partition by year(sale_date) order by avg(total_sale) desc) as rank_num
    from retail
    group by year(sale_date), month(sale_date)
) as t
where rank_num = 1;


-- 8. Write a SQL query to find the top 5 customers based on the highest total sales 

SELECT 
    customer_id, SUM(total_sale)
FROM
    retail
GROUP BY customer_id
ORDER BY SUM(total_sale) DESC
LIMIT 5; 

-- 9. Write a SQL query to find the number of unique customers who purchased items from each category.

SELECT 
    COUNT(DISTINCT (customer_id)), category
FROM
    retail
GROUP BY category; 


-- 10. Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)

with hourly_sale as
(select *,
 case
 when hour(sale_time) < 12 then 'Morning'
 when hour(sale_time) between 12 and 17 then 'Afternoon'
 else 'Evening'
end as shift from retail)
SELECT 
    COUNT(ï»¿transactions_id), shift
FROM
    hourly_sale
GROUP BY shift;
		