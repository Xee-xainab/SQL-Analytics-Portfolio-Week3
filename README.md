# 🎵 Chinook Music Store SQL Analysis

## 📌 Project Overview

This project analyzes the Chinook Music Store database using SQL to uncover business insights related to sales performance, customer behavior, music preferences, and geographic trends. The analysis demonstrates the use of relational database concepts and advanced SQL techniques to support data-driven decision-making.

---

## 🎯 Business Problem

The management of the Chinook Music Store needs to understand sales performance, customer purchasing behavior, top-performing artists and genres, and revenue distribution across countries. This analysis helps identify opportunities to improve customer retention, optimize marketing strategies, and increase revenue.

---

## 🛠️ Tools Used

- PostgreSQL
- DBeaver
- SQL
- GitHub

---

## 🗄️ Database Schema

The Chinook database is a relational database consisting of multiple linked tables.

```text
Customer
    │
    ├── Invoice
    │       │
    │       └── Invoice_Line
    │                 │
    │                 └── Track
    │                        │
    │                        ├── Album
    │                        │      │
    │                        │      └── Artist
    │                        │
    │                        ├── Genre
    │                        └── Media_Type

Employee
    │
    └── Customer (Support Representative)
```

This project uses SQL joins to connect these tables and analyze customer purchases, music sales, artists, genres, and revenue trends.

---

## 📊 Business Questions

- What is the total revenue generated?
- How many customers and employees are in the database?
- Which countries generate the highest revenue?
- Who are the highest-spending customers?
- Which customers spend above the average?
- Which music genres generate the most revenue?
- Which artists and tracks are the best sellers?
- How do customers rank based on total spending?

---

## 💡 Key Findings

- Total Revenue: **$2,328.60**
- Total Customers: **59**
- Total Employees: **8**
- The **USA** generated the highest revenue (**$523.06**).
- **Helena Holý** was the highest-spending customer.
- **Rock** was the top-performing music genre (**$826.65**).
- **The Trooper** was the most purchased track.

---

## 👩‍💻 Author

**Zainab Danjuma**

Aspiring Data Analyst | SQL | PostgreSQL | Power BI | Excel
