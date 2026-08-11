# Expense Tracker

A simple web app to track daily expenses. Log in, add expenses, view your history, and break spending down by category — all stored in MySQL, Giving you a clear view of how you spend your money each month.

## Features

- User login/authentication
- Add new expenses (amount, category, date, notes)
- View complete expense history
- Category-wise expense tracking and breakdown
- Persistent storage in MySQL

## Tech Stack

- **Java** (JSP & Servlets)
- **MySQL** (database)
- **JDBC** (database connectivity)
- **HTML/CSS/JavaScript** (frontend)
- **Apache Tomcat** (servlet container)

## Prerequisites

- JDK 8 or higher
- Apache Tomcat 9+
- MySQL Server


## Getting Started

### 1. Clone the repository

```bash
git clone 
cd expense-tracker
```

### 2. Set up the database

```sql
CREATE DATABASE expense_tracker;
USE expense_tracker;
```

### 3. Configure the database connection

Update the connection details in your DB config file (`DBConnection.java`):

```properties
db.url=jdbc:mysql://localhost:3306/expense_tracker
db.username=your_username
db.password=your_password
db.driver=com.mysql.cj.jdbc.Driver
```

### 4. Add the MySQL JDBC driver

Make sure `mysql-connector-j` (JDBC driver) is in your project's `WEB-INF/lib` folder.

### 5. Deploy to Tomcat

- Import the project into your IDE as a Dynamic Web Project
- Build the WAR file
- Deploy it to Tomcat's `webapps` folder, or run directly from your IDE

### 6. Access the app

```
http://localhost:8080/expense-tracker
```

