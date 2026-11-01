-- Query 1: Order Status Distribution --

SELECT order_status,
	COUNT(order_id) AS "Number of Orders"
FROM olist_orders_dataset
GROUP BY order_status
ORDER BY COUNT(order_id) DESC;

-- Query 2: Monthly Order Trends in 2018 --

SELECT MONTH(order_purchase_timestamp) AS "Month",
	YEAR(order_purchase_timestamp) AS "Year",
	COUNT(YEAR(order_purchase_timestamp)) AS "Number of Orders per year"
FROM olist_orders_dataset
WHERE YEAR(order_purchase_timestamp) = 2018
GROUP BY MONTH(order_purchase_timestamp), YEAR(order_purchase_timestamp)
ORDER BY MONTH(order_purchase_timestamp) ASC; 

-- Query 3: Customer Purchase Frequency --

SELECT c.customer_unique_id,
		COUNT(o.order_id) AS total_orders
FROM olist_customers_dataset AS c
INNER JOIN olist_orders_dataset AS o
    ON c.customer_id = o.customer_id
GROUP BY customer_unique_id
ORDER BY COUNT(o.order_id) DESC;

-- Query 4: Highest-Spending Customers --

SELECT c.customer_unique_id,
    SUM(oi.price) AS total_spent
FROM olist_customers_dataset AS c
INNER JOIN olist_orders_dataset AS o
    ON c.customer_id = o.customer_id
INNER JOIN olist_order_items_dataset AS oi
    ON oi.order_id = o.order_id
GROUP BY customer_unique_id
ORDER BY SUM(oi.price) DESC;

-- Query 5: Sales by Product Category --

SELECT p.product_category_name,
		SUM(oi.price) AS total_sales
FROM olist_order_items_dataset AS oi
INNER JOIN olist_products_dataset AS p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_sales DESC;

-- Query 6: Repeat Customer Analysis --

SELECT c.customer_unique_id,
	COUNT(o.order_id) AS total_orders
FROM olist_customers_dataset AS c
INNER JOIN olist_orders_dataset AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
HAVING total_orders > 1
ORDER BY total_orders DESC;

-- Query 7: Customers Spending Above Average --

WITH customer_spending AS (
    SELECT c.customer_unique_id,
        SUM(oi.price) AS total_spent
    FROM olist_customers_dataset AS c
    INNER JOIN olist_orders_dataset AS o
        ON c.customer_id = o.customer_id
    INNER JOIN olist_order_items_dataset AS oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_unique_id
)

SELECT
    customer_unique_id,
    total_spent
FROM customer_spending
WHERE total_spent > (
    SELECT AVG(total_spent)
    FROM customer_spending
)
ORDER BY total_spent DESC;

-- Query 8 validated total count for query 7 --

WITH customer_spending AS (
    SELECT
        c.customer_unique_id,
        SUM(oi.price) AS total_spent
    FROM olist_customers_dataset AS c
    INNER JOIN olist_orders_dataset AS o
        ON c.customer_id = o.customer_id
    INNER JOIN olist_order_items_dataset AS oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_unique_id
)
SELECT
    COUNT(*) AS customers_above_average
FROM customer_spending
WHERE total_spent > (
    SELECT AVG(total_spent)
    FROM customer_spending
);