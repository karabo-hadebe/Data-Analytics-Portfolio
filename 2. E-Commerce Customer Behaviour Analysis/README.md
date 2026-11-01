# E-Commerce Customer Behaviour Analysis in SQL

## About the Project

For this project, I used SQL to explore customer shopping behaviour using the Olist Brazilian E-Commerce dataset.

I wanted to understand how customers placed orders, how much they spent, whether they returned to make more purchases, and which product categories performed best.

I used MySQL Workbench to work with four related tables, joining them together to answer different questions about customer behaviour and sales.

## Tools Used

- MySQL and MySQL Workbench
- SQL joins
- Aggregate functions (`COUNT`, `SUM`, `AVG`)
- `GROUP BY`, `ORDER BY`, `WHERE`, and `HAVING`
- Common Table Expressions (CTEs) and subqueries

## The Dataset

I used the [Olist Brazilian E-Commerce Public Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce), which contains information about orders placed on a Brazilian e-commerce platform.

For this analysis, I worked with four tables:

| Table | Number of Records |
|---|---:|
| Customers | 99,441 |
| Orders | 99,441 |
| Order Items | 112,650 |
| Products | 32,951 |

I imported the CSV files into MySQL and checked the number of records in each table before starting the analysis.

## What I Wanted to Find Out

I focused on seven questions:

1. What is the distribution of order statuses?
2. How did the number of orders change from month to month in 2018?
3. Which customers placed the most orders?
4. Which customers spent the most money?
5. Which product categories generated the most sales?
6. Which customers made more than one purchase?
7. Which customers spent more than the average customer?

## What I Found

### Most orders were delivered

Of the 99,441 orders in the dataset, 96,478 were marked as delivered. That's approximately 97% of all orders.

### Some customers made multiple purchases

The customer with the highest purchase frequency placed 17 orders.

I also used `HAVING` to identify customers who had placed more than one order.

### The highest customer spending was R$13,440

By joining the customers, orders, and order items tables, I calculated how much each customer spent on items.

The highest total was **R$13,440.00**.

### Beauty & Health generated the most item sales

The `beleza_saude` (Beauty & Health) category ranked first, with **R$1,258,681.34** in recorded item sales.

### 27,347 customers spent above the average

I used a CTE to calculate each customer's total spending, then compared those totals against the average.

The analysis showed that **27,347 customers** spent more than the average customer.

## How I Approached the Analysis

I started by looking at the orders table on its own to understand the different order statuses and monthly order trends.

From there, I joined the customers and orders tables to look at how frequently individual customers made purchases.

To analyse spending, I brought in the order items table, which contains the prices of purchased products. I then joined the products table to compare sales across product categories.

For the final part, I used a CTE and a subquery to identify customers whose total spending was above the average.

## Things to Keep in Mind

There are a few limitations to this analysis:

- The spending figures are based on product prices and don't include delivery charges.
- I didn't filter the spending calculations by order status, so the totals represent recorded item sales rather than confirmed revenue.
- The monthly order analysis focuses specifically on 2018.
- The dataset is historical, so these findings don't necessarily reflect current shopping behaviour.

## Project Files

- `olist_customer_behaviour_analysis.sql` — All seven SQL queries
- `README.md` — Project overview, approach, and findings

## Final Thoughts

This project gave me the opportunity to practise working with related tables rather than analysing everything from a single dataset.

It also helped me become more comfortable using joins, grouping data, and writing queries that answer specific business questions.

What I enjoyed most was seeing how the different tables connected and how combining them made it possible to answer questions that couldn't be answered using just one table.