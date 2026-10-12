# 🛒 Blinkit Business Analytics | End-to-End Data Analytics Project

An end-to-end retail business analytics project designed to analyze sales performance, customer behavior, product profitability, inventory health, delivery operations, customer feedback, and marketing effectiveness using **Python, MySQL, SQL, and Power BI**.

The project transforms raw retail datasets into actionable business insights through data preparation, relational database design, SQL-based analysis, analytical views, DAX measures, and interactive Power BI dashboards.

---

## 📌 Project Overview

Retail businesses generate large volumes of data across orders, customers, products, inventory, deliveries, marketing campaigns, and customer feedback. Analyzing these datasets independently makes it difficult to understand overall business performance.

This project integrates these datasets into a centralized analytical database and develops a Power BI dashboard to help business stakeholders monitor key performance indicators (KPIs), identify trends, and make data-driven decisions.

**Project objectives:**
- Analyze revenue, order volume, and average order value.
- Identify high-performing products, categories, and customers.
- Understand customer segments and repeat purchasing behavior.
- Evaluate product profitability and profit margins.
- Monitor delivery delays and delivery efficiency.
- Analyze inventory damage and stock management.
- Measure marketing campaign performance using ROAS and ROI.
- Evaluate customer satisfaction and feedback sentiment.

## 🧰 Tech Stack

| Technology | Purpose |
|---|---|
| Python | Data preparation and analysis |
| Pandas | Data manipulation and cleaning |
| NumPy | Numerical operations |
| MySQL | Relational database and data storage |
| SQL | Business analysis, aggregations, joins, and analytical views |
| Power BI | Interactive dashboards and business reporting |
| DAX | KPI calculations and analytical measures |
| Power Query | Data loading and transformation |
| Git & GitHub | Version control and project documentation |

## 🏗️ Project Workflow

```text
Raw Retail Datasets
        |
        v
Python & Pandas
(Data Inspection and Preparation)
        |
        v
MySQL Database
(Relational Schema and Data Storage)
        |
        v
SQL Analysis
(60 Business Questions + Analytical Views)
        |
        v
Power BI Data Model
(Relationships + DAX Measures)
        |
        v
Interactive Dashboards
        |
        v
Business Insights & Decisions
```

## 📂 Dataset Description

The project uses multiple CSV datasets representing different areas of retail operations.

| Dataset | Description |
|---|---|
| `customers.csv` | Customer information and segmentation |
| `orders.csv` | Order dates, customer references, and order totals |
| `order_items.csv` | Products, quantities, and item-level pricing |
| `products.csv` | Product details, categories, brands, and margins |
| `inventory.csv` | Inventory records, stock received, and damaged stock |
| `delivery_performance.csv` | Delivery times and delivery status |
| `customer_feedback.csv` | Customer ratings and sentiment |
| `marketing_performance.csv` | Marketing spend and revenue generated |

The datasets are organized into eight corresponding base tables in the `blinkit_analytics` MySQL database.

> **Note:** This is an independent analytics project using project datasets. It is not an official Blinkit product or an internal Blinkit analytics system.

## 🗄️ Database Design

The MySQL database contains eight base tables:

1. `customers`
2. `orders`
3. `products`
4. `order_items`
5. `inventory`
6. `delivery_performance`
7. `customer_feedback`
8. `marketing_performance`

Relationships between customers, orders, products, order items, inventory, deliveries, and feedback support integrated analysis across the business.

### Analytical SQL Views

The following views were created to organize frequently used business metrics for reporting:

| View | Purpose |
|---|---|
| `vw_monthly_sales` | Monthly sales performance |
| `vw_customer_performance` | Customer-level performance analysis |
| `vw_product_performance` | Product performance and profitability |
| `vw_inventory_performance` | Inventory and stock health |
| `vw_delivery_analysis` | Delivery performance and delay analysis |

The views provide reusable analytical datasets for reporting and business intelligence.

## 📊 SQL Analysis

**60 business questions** were completed and verified in MySQL Workbench.

The analysis covers the following areas:

### Sales Analysis
- Total revenue and order volume.
- Average order value (AOV).
- Monthly sales trends.
- Revenue contribution by category.
- Product-level sales performance.

### Customer Analysis
- Customer spending and revenue contribution.
- Customer segmentation.
- Repeat customer rate.
- Average order frequency.
- Customer purchasing behavior.

### Product Analysis
- Best-performing products by revenue.
- Products ranked by quantity sold.
- Product profitability.
- Profit margin analysis.
- Category-level performance.

### Operations & Inventory
- Average delivery time.
- Delivery delay analysis.
- Stock received and damaged stock.
- Inventory damage rate.
- Operational performance monitoring.

### Marketing & Feedback
- Marketing spend and revenue generated.
- Return on ad spend (ROAS).
- Marketing return on investment (ROI).
- Customer ratings.
- Positive feedback and sentiment analysis.

## 📈 Power BI Dashboard

The Power BI report connects to MySQL and combines the eight base tables with five analytical views.

The report includes a consistent yellow-and-white visual theme, KPI cards, charts, matrices, and synchronized slicers for interactive exploration.

### Page 1 — Executive Overview

**Purpose:** Provide a high-level view of overall business performance.

Key elements:
- Total Revenue
- Total Orders
- Average Order Value
- Total Profit
- Monthly Revenue Trend
- Revenue by Category
- Top 10 Products by Revenue
- Orders by Customer Segment
- Delivery Performance

### Page 2 — Customer Analysis

**Purpose:** Understand customer value, purchasing behavior, and satisfaction.

Key elements:
- Total Customers
- Average Order Value
- Repeat Purchase Rate
- Average Order Frequency
- Average Rating
- Top 10 Customers by Revenue
- Revenue by Customer Segment
- Average Rating by Customer Segment
- Customer Performance Matrix

### Page 3 — Product Analysis

**Purpose:** Identify profitable products and evaluate product performance.

Key elements:
- Total Products
- Total Quantity Sold
- Total Revenue
- Total Profit
- Profit Margin %
- Top 10 Products by Profit
- Top 10 Products by Quantity Sold
- Profit by Category
- Product Performance Matrix

### Page 4 — Operations & Inventory

**Purpose:** Monitor delivery efficiency and inventory health.

Key elements:
- Average Delivery Time
- Delayed Deliveries
- Delivery Delay %
- Total Stock Received
- Damage Rate %
- Average Delivery Time by Delivery Status
- Stock Received vs Damaged Stock
- Damage Rate by Product Category
- Inventory Performance Matrix

### Page 5 — Marketing & Feedback

**Status:** Planned.

The proposed page will focus on marketing campaign effectiveness, ROAS, marketing ROI, customer ratings, and feedback sentiment.

### Interactive Filters

The dashboard uses synchronized slicers for:
- Year
- Month
- Category
- Brand
- Customer Segment

These filters allow users to explore business performance across different time periods and business segments.

## 🧮 Key DAX Measures

The Power BI data model includes measures for sales, customers, profitability, delivery performance, inventory, feedback, and marketing.

| Measure | Business Purpose |
|---|---|
| Total Revenue | Measures order revenue |
| Total Orders | Counts distinct orders |
| Average Order Value | Revenue divided by total orders |
| Total Profit | Estimates profit using item quantity, price, and product margin |
| Profit Margin % | Measures estimated profit relative to revenue |
| Total Customers | Counts distinct customers |
| Repeat Customer Rate % | Measures the share of customers with at least two orders |
| Average Order Frequency | Measures orders per customer |
| Average Delivery Time | Calculates average delivery duration |
| Delayed Deliveries | Counts delayed deliveries |
| Delivery Delay % | Measures the proportion of delayed deliveries |
| Total Stock Received | Aggregates received stock |
| Total Damaged Stock | Aggregates damaged stock |
| Damage Rate % | Measures damaged stock relative to stock received |
| Average Rating | Calculates the average customer rating |
| Positive Feedback % | Measures the share of positive feedback |
| ROAS | Marketing revenue divided by marketing spend |
| Marketing ROI % | Calculates return relative to marketing spend |

**Important metric definitions:**

- Profit is estimated using the product margin percentage provided in the dataset; it should not be interpreted as audited net profit.
- ROAS measures revenue generated per unit of marketing spend.
- Marketing ROI is calculated as `(Marketing Revenue − Marketing Spend) / Marketing Spend × 100`.
- Delivery delay metrics classify both `Slightly Delayed` and `Significantly Delayed` deliveries as delayed.

## 💡 Business Value

This project demonstrates how data analytics can support retail decision-making.

- **Revenue optimization:** Identify high-performing categories and products.
- **Customer retention:** Understand repeat purchases and valuable customer segments.
- **Product strategy:** Compare sales volume, revenue, and estimated profitability.
- **Operational improvement:** Track delivery times and delayed deliveries.
- **Inventory control:** Monitor damaged stock and identify potential problem categories.
- **Marketing evaluation:** Compare campaign spend with generated revenue.
- **Customer experience:** Analyze ratings and feedback sentiment.

These are the analytical applications of the project; specific business improvements should be established using validated findings from the completed datasets.

## 📁 Repository Structure

The repository contains the datasets, SQL analysis, and Power BI report. The structure below represents the intended organization; update it if your actual repository uses different folder names.

```text
blinkit-business-analytics/
│
├── data/
│   ├── customers.csv
│   ├── orders.csv
│   ├── order_items.csv
│   ├── products.csv
│   ├── inventory.csv
│   ├── delivery_performance.csv
│   ├── customer_feedback.csv
│   └── marketing_performance.csv
│
├── python/
│   └── data preparation and analysis notebooks/scripts
│
├── sql/
│   ├── database schema and table creation
│   ├── business analysis queries
│   └── analytical views
│
├── dashboard/
│   └── Blinkit_Business_Analytics.pbix
│
└── README.md
```

## 🚀 Getting Started

### Prerequisites

Install or configure:
- Python 3.x
- Jupyter Notebook or Google Colab
- MySQL Server and MySQL Workbench
- Power BI Desktop
- MySQL Connector/NET compatible with your Power BI installation

### 1. Clone the Repository

```bash
git clone https://github.com/sujaltamboli99/blinkit-business-analytics.git
cd blinkit-business-analytics
```

### 2. Set Up Python

Create and activate a virtual environment if you plan to run the Python scripts locally.

```bash
python -m venv venv
```

On Windows:

```bash
venv\Scripts\activate
```

Install the libraries required by your scripts:

```bash
pip install pandas numpy jupyter
```

### 3. Set Up MySQL

1. Start MySQL Server and open MySQL Workbench.
2. Create the `blinkit_analytics` database.
3. Create the eight base tables using the project's schema scripts.
4. Import the corresponding CSV datasets into the tables.
5. Run the SQL analysis queries.
6. Create the five analytical views.

Use the actual schema and import instructions in the repository if they differ from this outline.

### 4. Open the Power BI Report

Open:

`dashboard/Blinkit_Business_Analytics.pbix`

Configure the MySQL connection for your local environment if prompted. The existing report was configured using:

- Server: `localhost`
- Database: `blinkit_analytics`

Refresh the data after the database and tables have been configured.

## 🎯 Skills Demonstrated

- Data cleaning and preparation
- Exploratory data analysis
- Python and Pandas
- Relational database design
- SQL joins, aggregations, grouping, and business queries
- Analytical view creation
- Data modeling and relationships
- DAX measures and KPI calculations
- Power BI dashboard development
- Business performance analysis
- Data storytelling and reporting
- Git and GitHub documentation

## 🔮 Future Improvements

- Complete the Marketing & Feedback dashboard page.
- Add deeper marketing channel and campaign analysis.
- Improve data validation and automated refresh workflows.
- Add a documented data dictionary and database relationship diagram.
- Develop an executive-ready insights and recommendations section.
- Explore automated reporting and natural-language querying of business metrics.

## 👨‍💻 Author

**Sujal Ajay Tamboli**

B.Tech Computer Science & Engineering

Interested in Data Analytics, Business Intelligence, SQL, Python, and Machine Learning.

- GitHub: [@sujaltamboli99](https://github.com/sujaltamboli99)
- Project Repository: [Blinkit Business Analytics](https://github.com/sujaltamboli99/blinkit-business-analytics)

---

*Built as an end-to-end data analytics portfolio project to demonstrate the transformation of retail datasets into structured analysis and interactive business intelligence dashboards.*
