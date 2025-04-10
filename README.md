<div align="center">

# 📊 Retail Analysis Project using SQL

</div>

This project contains SQL-based data analysis on the **Online Retail Dataset** using MySQL Workbench.

---

## 📁 Project Files

- **retail.csv** → Raw data used for analysis
#### This dataset contains following field names
-- transactions_id
-- sale_date
-- sale_time
-- customer_id
-- gender
-- age
-- category
-- quantiy
-- price_per_unit
-- cogs
-- total_sale

- **SQL_Script for retail dataset.sql** → SQL code written in MySQL Workbench for data cleaning, exploration, and answering business questions  
- **Questions_retail.txt** → 10 key business questions solved with SQL logic and answers

## ✨ Project Overview

This is a beginner-friendly data analysis project created to practice real-world SQL skills:
- Used `GROUP BY`, `JOIN`, `RANK()`, and `DATE` functions
- Focused on business insights and practical analytics
- Structured cleanly for recruiters and portfolio review

## 🧠 Tools Used

- MySQL Workbench (SQL queries)
- Excel (for data structure and preview)
- GitHub (for project hosting)

## 📈 Key Business Questions answered 

1. Retrieve all columns for sales made on '2022-11-05'
2. Retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
3. Calculate the total sales (total_sale) for each category.:
4. Find the average age of customers who purchased items from the 'Beauty' category.:
5. Find all transactions where the total_sale is greater than 1000.
6. Find the total number of transactions (transaction_id) made by each gender in each category.
7. Calculate the average sale for each month. Find out best selling month in each year:
8. Find the top 5 customers based on the highest total sales 
9. Find the number of unique customers who purchased items from each category.
10. Create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17)

## 💡 Key Takeaways

1. 💰 The Electronics category contributed the highest in total sales followed by Clothing and then Beauty
2. 💄 The average age of customers purchasing from the Beauty category is around 40 years and purchasing from the Electronics and Clothing category is around 42 years indicating a target demographic for that product line.
3. 💸 There are 402 out of 1987 transactions having total sales > ₹1000, representing premium buyers. These customers could be targeted for loyalty or high-tier programs.
4. ⏰ Most orders were placed in the Evening shift followed by morning and then Afternoon. This may suggest an opportunity for timed marketing campaigns or flash sales.








		
