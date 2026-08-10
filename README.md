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

# 📊 Entity Relationship Diagram (ERD)

The database schema was designed in **MySQL Workbench** using primary keys, foreign keys, and normalized relationships.

> **ER Diagram**

![ER Diagram](docs/ER_Diagram_Blinkit.png)

---

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
- [ ] Data Import into MySQL
- [ ] SQL Business Analysis
- [ ] Power BI Dashboard
- [ ] Business Insights Report

---

# 🎯 Project Roadmap

```
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
Data Import
      ⏳
SQL Analysis
      ⏳
Power BI Dashboard
      ⏳
Business Insights
      ⏳
```

---

# 👨‍💻 Author

**Sujal Tamboli**

B.Tech – Computer Science & Engineering

Walchand Institute of Technology, Solapur

---

⭐ If you found this project helpful, consider giving the repository a **Star**.