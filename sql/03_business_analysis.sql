/*==========================================================
 Blinkit Business Analytics
 SQL Business Analysis
 Author : Sujal Tamboli
==========================================================*/


/*==========================================================
SECTION 1 : BUSINESS KPIs
==========================================================*/


-- Q1. Find the total number of customers.

select count(*) as total_customers 
from customers ;


-- Q2. Find the total number of products in the products table.


select count(*) as total_products
from products;



--Q3. Find the total number of orders in the orders table.

select count(*) as total_orders 
from orders;


-- Calculate the total revenue generated from all orders using the order_total column.

select round(sum(order_total),2) as total_revenue
from orders;


-- Calculate the Average Order Value (AOV) using order_total.

select round(avg(order_total),2) as aov
from orders;

-- Find the highest order value from the orders table.

select max(order_total) as highest_order_value from orders ;

-- Find the lowest order value from the orders table.

select min(order_total) as lowest_order_value from orders;

-- Calculate the total marketing spend from the marketing_performance table using the spend column.

select round(sum(spend),2) as total_marketing_spend from marketing_performance;

-- Calculate the total revenue generated from all marketing campaigns using the revenue_generated column.

select round(sum(revenue_generated),2) as total_revenue_generated from marketing_performance ;

-- Calculate the overall ROAS (Return on Ad Spend) using total revenue_generated divided by total spend.

select round(sum(revenue_generated) / sum(spend),2) as roas from marketing_performance;


/*==========================================================
SECTION 2 : CUSTOMER ANALYSIS
==========================================================*/


-- Find the top 10 customers by total spending. Return:

-- customer_id
-- customer_name
-- total_spent

-- Sort from highest to lowest spending.

select 
    c.customer_id ,
    c.customer_name ,
    sum(o.order_total) as total_spend
from customers c 
left join orders o 
on c.customer_id =  o.customer_id
group by customer_id
order by total_spend desc
limit 10;


-- Find the top 10 customers by number of orders.

-- Return:

-- customer_id
-- customer_name
-- total_orders

-- Sort from highest number of orders to lowest.


select 
    c.customer_id,
    c.customer_name,
    count(o.order_id) as total_orders
from 
    customers c
left join 
    orders o 
on  
    c.customer_id = o.customer_id
group by c.customer_id , c.customer_name 
order by total_orders desc
limit 10 


-- Find the average order value for each customer.

-- Return:

-- customer_id
-- customer_name
-- average_order_value

-- Show the top 10 customers with the highest average order value.


select 
    c.customer_id ,
    c.customer_name ,
    ROUND(AVG(o.order_total), 2) as average_order_value
from 
    customers c 
left join 
    orders o 
on 
    c.customer_id = o.customer_id
group by c.customer_id , c.customer_name 
order by average_order_value desc
limit 10;


-- Find the number of customers who have placed at least one order.

-- Return the result as:

-- customers_with_orders

select count(distinct c.customer_id) as customers_with_orders
from customers c 
left join orders o 
on c.customer_id = o.customer_id
where o.order_id is not null


-- Q15

-- Find the number of customers who have never placed an order.

-- Return:

-- customers_without_orders

select count(distinct c.customer_id) as customers_without_orders
from customers c 
left join orders o 
on c.customer_id = o.customer_id
where o.order_id is null


-- Find the percentage of customers who have placed at least one order.

-- Return:

-- customer_order_rate as a percentage rounded to 2 decimal places.


select 
    round(
        (customer_with_orders/ total_customers) *100
        ,2
    ) as customer_order_rate 
from 
    (
        SELECT
            COUNT(DISTINCT CASE
                WHEN o.order_id IS NOT NULL THEN c.customer_id
            END) AS customer_with_orders,
        
            COUNT(DISTINCT c.customer_id) AS total_customers
        
        FROM customers c
        LEFT JOIN orders o
            ON c.customer_id = o.customer_id
        
    ) as customer_stats



/*==========================================================
SECTION 3 : PRODUCT ANALYSIS
==========================================================*/


/*==========================================================
SECTION 4 : SALES ANALYSIS
==========================================================*/


/*==========================================================
SECTION 5 : DELIVERY ANALYSIS
==========================================================*/


/*==========================================================
SECTION 6 : INVENTORY ANALYSIS
==========================================================*/


/*==========================================================
SECTION 7 : CUSTOMER FEEDBACK
==========================================================*/


/*==========================================================
SECTION 8 : MARKETING ANALYSIS
==========================================================*/