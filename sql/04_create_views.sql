CREATE OR REPLACE VIEW vw_monthly_sales AS
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(order_total), 2) AS total_revenue,
    ROUND(AVG(order_total), 2) AS average_order_value
FROM orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');



CREATE OR REPLACE VIEW vw_customer_performance AS
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    ROUND(COALESCE(SUM(o.order_total), 0), 2) AS total_spent,
    ROUND(COALESCE(AVG(o.order_total), 0), 2) AS average_order_value,
    CASE
        WHEN COALESCE(SUM(o.order_total), 0) >= 10000 THEN 'High Value'
        WHEN COALESCE(SUM(o.order_total), 0) BETWEEN 5000 AND 9999 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_value_segment
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name;



CREATE OR REPLACE VIEW vw_product_performance AS
SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.brand,
    p.margin_percentage,
    COALESCE(SUM(o.quantity), 0) AS total_quantity_sold,
    ROUND(
        COALESCE(SUM(o.quantity * o.unit_price), 0),
        2
    ) AS total_revenue,
    ROUND(
        COALESCE(
            SUM(
                o.quantity
                * o.unit_price
                * (p.margin_percentage / 100)
            ),
            0
        ),
        2
    ) AS total_profit,
    ROUND(
        COALESCE(AVG(o.unit_price), 0),
        2
    ) AS average_selling_price
FROM products p
LEFT JOIN order_items o
    ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category,
    p.brand,
    p.margin_percentage;




CREATE OR REPLACE VIEW vw_delivery_performance AS
SELECT
    delivery_partner_id,
    delivery_status,
    COUNT(*) AS total_deliveries,
    ROUND(AVG(delivery_time_minutes), 2) AS average_delivery_time_minutes,
    SUM(
        CASE
            WHEN delivery_status IN (
                'Slightly Delayed',
                'Significantly Delayed'
            )
            THEN 1
            ELSE 0
        END
    ) AS delayed_deliveries
FROM delivery_performance
GROUP BY
    delivery_partner_id,
    delivery_status;




CREATE OR REPLACE VIEW vw_inventory_performance AS
SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.brand,
    COALESCE(SUM(i.stock_received), 0) AS total_stock_received,
    COALESCE(SUM(i.damaged_stock), 0) AS total_damaged_stock,
    ROUND(
        COALESCE(
            (
                SUM(i.damaged_stock)
                / NULLIF(SUM(i.stock_received), 0)
            ) * 100,
            0
        ),
        2
    ) AS damage_rate_percentage
FROM products p
LEFT JOIN inventory i
    ON p.product_id = i.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category,
    p.brand;