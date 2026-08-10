# Database Design

## Overview

The Blinkit Business Analytics project uses a normalized relational database designed in MySQL.

The schema consists of eight tables connected using primary keys and foreign keys.

---

## Tables

### 1. customers

Stores customer information.

**Primary Key**

- customer_id

---

### 2. orders

Stores customer orders.

**Primary Key**

- order_id

**Foreign Key**

- customer_id → customers.customer_id

---

### 3. products

Stores product details.

**Primary Key**

- product_id

---

### 4. order_items

Stores products included in each order.

**Composite Primary Key**

- order_id
- product_id

**Foreign Keys**

- order_id → orders.order_id
- product_id → products.product_id

---

### 5. inventory

Stores daily inventory records.

**Composite Primary Key**

- product_id
- inventory_date

**Foreign Key**

- product_id → products.product_id

---

### 6. delivery_performance

Stores delivery metrics.

**Primary Key**

- order_id

**Foreign Key**

- order_id → orders.order_id

---

### 7. customer_feedback

Stores customer reviews.

**Primary Key**

- feedback_id

**Foreign Keys**

- order_id → orders.order_id
- customer_id → customers.customer_id

---

### 8. marketing_performance

Stores marketing campaign performance.

**Primary Key**

- campaign_id

No foreign keys.

---

# Database Relationships

| Parent | Child | Relationship |
|---------|-------|--------------|
| Customers | Orders | 1 : Many |
| Orders | Order_Items | 1 : Many |
| Products | Order_Items | 1 : Many |
| Products | Inventory | 1 : Many |
| Orders | Delivery_Performance | 1 : 1 |
| Customers | Customer_Feedback | 1 : Many |
| Orders | Customer_Feedback | 1 : Many |

---

# ER Diagram

![ER Diagram](ER_Diagram_Blinkit.png)