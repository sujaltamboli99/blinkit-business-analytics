# Data Dictionary

## Project: Blinkit Business Intelligence & Retail Analytics Platform

This document describes all datasets used in the project.

| Table Name | Purpose |
|------------|---------|
| Customers | Stores customer information such as name, email, address, segment, and registration details. |
| Products | Stores product details including category, brand, price, MRP, and stock levels. |
| Orders | Stores order transaction details placed by customers. |
| Order Items | Stores the products purchased in each order along with quantity and unit price. |
| Inventory | Stores daily inventory information including stock received and damaged stock. |
| Delivery Performance | Stores delivery metrics such as delivery time, distance, and delivery status. |
| Customer Feedback | Stores customer ratings, feedback text, sentiment, and feedback category. |
| Marketing Performance | Stores marketing campaign data including impressions, clicks, conversions, spend, and ROAS. |

# Data Cleaning Notes

## Customers
- Converted registration_date to datetime

## Orders
- Converted order_date to datetime
- Converted promised_delivery_time to datetime
- Converted actual_delivery_time to datetime

## Inventory
- Converted date to datetime

## Delivery Performance
- Converted promised_time to datetime
- Converted actual_time to datetime
- Missing values in reasons_if_delayed were retained because they represent on-time deliveries.

## Marketing
- Converted date to datetime

## Customer Feedback
- Converted feedback_date to datetime

## Validation Summary

- No duplicate records found
- Primary keys validated
- Foreign key relationships validated
- Cleaned datasets saved to `data/cleaned/`