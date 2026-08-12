# 🛒 Blinkit Business Analytics

A production-style end-to-end Data Analytics project that analyzes Blinkit's retail operations using **Python, MySQL, SQL, and Power BI**. The project demonstrates the complete analytics workflow—from raw CSV datasets to business insights through data cleaning, database design, SQL analysis, and interactive dashboards.

---

# 📌 Project Objective

The primary objective of this project is to:

- Analyze Blinkit's business performance using real-world retail data.
- Design a normalized relational database.
- Perform data cleaning and validation.
- Import cleaned data into MySQL.
- Execute SQL-based business analysis.
- Build interactive Power BI dashboards.
- Generate actionable business insights.

---

# 🛠️ Tech Stack

- Python
- Pandas
- NumPy
- Jupyter Notebook
- MySQL
- MySQL Workbench
- SQL
- Power BI
- Git
- GitHub
- VS Code

---

# 📂 Project Structure

```text
blinkit-business-analytics/
│
├── data/
│   ├── raw/
│   ├── cleaned/
│   └── processed/
│
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   └── 02_data_cleaning.ipynb
│
├── sql/
│   ├── 01_create_database.sql
│   └── 02_create_tables.sql
│
├── docs/
│   ├── ER_Diagram_Blinkit.png
│   ├── data_dictionary.md
│   └── database_design.md
│
├── dashboard/
│
├── images/
│
├── README.md
├── CHANGELOG.md
├── requirements.txt
└── .gitignore
```

---

# 📊 Dataset

This project uses a publicly available Blinkit retail dataset and supporting datasets representing:

- Customers
- Orders
- Order Items
- Products
- Inventory
- Delivery Performance
- Customer Feedback
- Marketing Performance

---

# 🗄️ Database Schema

The project follows a normalized relational database design consisting of **8 tables**.

### Tables

- Customers
- Orders
- Products
- Order_Items
- Inventory
- Delivery_Performance
- Customer_Feedback
- Marketing_Performance

---


---

# 🗃️ MySQL Data Import

All **8 cleaned CSV datasets** have been successfully imported into the MySQL database.

### Import Status

| Table | Status |
|---|---|
| Customers | ✅ Imported |
| Products | ✅ Imported |
| Orders | ✅ Imported |
| Order Items | ✅ Imported |
| Inventory | ✅ Imported |
| Delivery Performance | ✅ Imported |
| Customer Feedback | ✅ Imported |
| Marketing Performance | ✅ Imported |

The imported data was validated against the corresponding CSV files to confirm that the expected records were successfully loaded.

### Schema Corrections During Import

During the import process, some data type and schema issues were identified and corrected:

- `order_id` was changed to `BIGINT` where required because some order IDs exceeded the `INT` range.
- `delivery_partner_id` was changed to `BIGINT` where required.
- Inventory column was corrected to `damaged_stock`.
- Customer Feedback table was updated to include the `rating` column.
- Marketing Performance table was updated to include the `conversions` column.
- Date and numeric formats were validated before importing.

`BIGINT` was used selectively only where the dataset required it instead of changing every ID column unnecessarily.

# 📊 Entity Relationship Diagram (ERD)

The database schema was designed in **MySQL Workbench** using primary keys, foreign keys, and normalized relationships.

> **ER Diagram**

![ER Diagram](docs/ER_Diagram_Blinkit.png)

---


---

# 📈 SQL Business Analysis

The MySQL database is now being used for business-oriented SQL analysis.

A dedicated SQL file has been created:

```text
sql/03_business_analysis.sql

# 🚀 Development Progress

## ✅ Day 1 – Project Setup & Data Understanding

- Created project folder structure
- Configured Python virtual environment
- Downloaded and organized datasets
- Performed initial data profiling
- Created data dictionary

---

## ✅ Day 2 – Data Cleaning & Validation

- Converted date columns to appropriate datetime formats
- Checked missing values
- Removed duplicate records
- Validated primary keys
- Validated foreign key relationships
- Identified composite keys
- Exported cleaned datasets

---

## ✅ Day 3 – Database Design

- Created MySQL database
- Designed normalized database schema
- Created all 8 relational tables
- Implemented primary keys
- Implemented foreign keys
- Implemented composite keys
- Generated ER Diagram using MySQL Workbench
- Validated relationships between tables

---



---

# 4. ADD DAY 4

### Where:
In **Development Progress**, after Day 3.

### Add:

```markdown
---

## ✅ Day 4 – MySQL Data Import & Validation

- Imported cleaned Customers dataset
- Imported cleaned Products dataset
- Imported cleaned Orders dataset
- Imported cleaned Order Items dataset
- Imported cleaned Inventory dataset
- Imported cleaned Delivery Performance dataset
- Imported cleaned Customer Feedback dataset
- Imported cleaned Marketing Performance dataset
- Validated imported data against CSV files
- Identified and corrected large ID data type issues
- Used `BIGINT` selectively where required
- Corrected inventory column naming
- Added missing `rating` column to Customer Feedback
- Added missing `conversions` column to Marketing Performance

**All 8 tables were successfully imported and validated.**



---

## 🔄 Day 5 – SQL Business Analysis

- Created `03_business_analysis.sql`
- Started Business KPI analysis
- Completed Q1–Q10
- Started Customer Analysis
- Completed Q11–Q16
- Practiced multi-table joins
- Used aggregate functions
- Used `COUNT(DISTINCT)`
- Used `CASE WHEN`
- Used subqueries
- Calculated customer-level business metrics
- Calculated customer order rate

### Current SQL Progress

```text
Business KPIs
      ✅ Q1–Q10

Customer Analysis
      ✅ Q11–Q16
      ⏳ Q17 onwards

Product Analysis
      ⏳

Sales Analysis
      ⏳

Delivery Analysis
      ⏳

Inventory Analysis
      ⏳

Customer Feedback Analysis
      ⏳

Marketing Analysis
      ⏳

# 📅 Upcoming Work

- Import cleaned CSV files into MySQL
- Validate imported data
- Write SQL business analysis queries
- Create SQL views
- Build Power BI dashboard
- Generate business insights
- Complete project documentation

---

# 📈 Current Project Status

- [x] Project Setup
- [x] Data Understanding
- [x] Data Cleaning
- [x] Data Validation
- [x] Database Design
- [x] MySQL Database Schema
- [x] ER Diagram
- [x ] Data Import into MySQL
- [ ] SQL Business Analysis
- [ ] Power BI Dashboard
- [ ] Business Insights Report

---

# 🎯 Project Roadmap

```text
Project Setup
      ✅
Data Understanding
      ✅
Data Cleaning
      ✅
Database Design
      ✅
ER Diagram
      ✅
MySQL Schema
      ✅
Data Import
      ✅
Data Validation
      ✅
SQL Analysis
      🔄
Power BI Dashboard
      ⏳
Business Insights
      ⏳
AI Analytics Agent
      ⏳

# 👨‍💻 Author

**Sujal Tamboli**

B.Tech – Computer Science & Engineering

Walchand Institute of Technology, Solapur

---

⭐ If you found this project helpful, consider giving the repository a **Star**.