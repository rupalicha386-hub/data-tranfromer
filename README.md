# data-transfromer

# 📊 Data Transformer — SQL Project

## 📌 Project Overview

**Data Transformer** is a MySQL project created to practice SQL queries and data transformation techniques.

This project uses three tables:

- `dt_customers` 👤 Customer Information
- `dt_orders` 🛒 Sales / Order Information
- `dt_employees` 👨‍💼 Employee Information

The project covers SQL joins, subqueries, date functions, string functions, window functions, and CASE statements.

---

## 🗂️ Database

**Database Name:** `rupalidb`

### 👤 dt_customers

| Column | Description |
|---|---|
| customer_id | Unique customer ID |
| first_name | Customer first name |
| last_name | Customer last name |
| email | Customer email |
| registration_date | Registration date |

### 🛒 dt_orders

| Column | Description |
|---|---|
| order_id | Unique order ID |
| customer_id | Customer ID |
| order_date | Order date |
| total_amount | Total order amount |

### 👨‍💼 dt_employees

| Column | Description |
|---|---|
| employees_id | Unique employee ID |
| first_name | Employee first name |
| last_name | Employee last name |
| department | Employee department |
| hire_date | Joining date |
| salary | Employee salary |

---

## 👨‍💻 SQL Tasks Completed

1. 🔗 Inner Join
2. 🔗 Left Join
3. 🔗 Right Join
4. 🔗 Full Outer Join using `union`
5. 📊 Orders above average amount
6. 📊 Employees above average salary
7. 📅 Extract year and month
8. 📅 Calculate date difference
9. 📅 Format order date
10. 👤 Concatenate first and last name
11. ✏️ Replace part of a string
12. 🔠 Uppercase and lowercase names
13. ✂️ Trim email values
14. 📈 Running total using window function
15. 🏆 Rank orders using `rank()`
16. 💰 Apply discount using `case`
17. 📊 Categorize employee salaries

---

## 🔧 SQL Concepts Used

- `select`
- `where`
- `inner join`
- `left join`
- `right join`
- `union`
- Subqueries
- Aggregate functions
- Date functions
- String functions
- Window functions
- `sum() over()`
- `rank()`
- `case`

---

## 📈 Sample Output

### 🛒 Orders

| Order ID | Total Amount |
|---:|---:|
| 101 | 150.50 |
| 102 | 200.75 |

### 👨‍💼 Employees

| Employee | Department | Salary |
|---|---|---:|
| Kenji Yamada | Sales | 50000 |
| Aiko Suzuki | HR | 55000 |

---

## 🎯 Project Objectives

- Understand SQL joins.
- Work with multiple tables.
- Use subqueries for data analysis.
- Perform date and string transformations.
- Use window functions.
- Apply conditional logic using `case`.
- Analyze customer, order, and employee data.
