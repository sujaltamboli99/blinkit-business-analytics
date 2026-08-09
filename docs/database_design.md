# Database Design

## Overview

The Blinkit Business Analytics project follows a normalized relational database design to ensure data integrity, reduce redundancy, and support efficient analytical queries.

---

## Tables

1. customers
2. orders
3. order_items
4. products
5. inventory
6. delivery_performance
7. customer_feedback
8. marketing_performance

---

## Primary Keys

| Table | Primary Key |
|--------|-------------|
| customers | customer_id |
| orders | order_id |
| order_items | (order_id, product_id) |
| products | product_id |
| inventory | (product_id, date) |
| delivery_performance | order_id |
| customer_feedback | feedback_id |
| marketing_performance | campaign_id |

---

## Foreign Keys

| Table | Foreign Key | References |
|--------|-------------|------------|
| orders | customer_id | customers.customer_id |
| order_items | order_id | orders.order_id |
| order_items | product_id | products.product_id |
| inventory | product_id | products.product_id |
| delivery_performance | order_id | orders.order_id |
| customer_feedback | customer_id | customers.customer_id |
| customer_feedback | order_id | orders.order_id |

---

## Relationships

- Customers → Orders (1:M)
- Orders → Order Items (1:M)
- Products → Order Items (1:M)
- Products → Inventory (1:M)
- Orders → Delivery Performance (1:1)
- Customers → Customer Feedback (1:M)
- Orders → Customer Feedback (1:1)

Marketing Performance is an independent analytical table in the current dataset and has no foreign key relationships.