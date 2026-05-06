# Quiz Application Setup Guide

## Prerequisites
- Java 21+
- Apache Tomcat 10.0+ (Jakarta EE 10)
- MySQL Server

## Setup Instructions

### 1. Database Setup
- Execute the `setup.sql` script in your MySQL environment to create the `quiz_db` database and necessary tables.
- An initial admin account is created:
  - **Username:** admin
  - **Password:** admin123

### 2. Dependency Management
- Download the **MySQL Connector/J** (e.g., `mysql-connector-j-8.x.x.jar`).
- Place the JAR file in the `src/main/webapp/WEB-INF/lib/` directory.

### 3. Database Configuration
- Open `src/main/java/com/quizapp/util/DBConnection.java`.
- Update the `URL`, `USERNAME`, and `PASSWORD` constants to match your MySQL credentials.

### 4. Deployment
- Import the project into Eclipse as a "Dynamic Web Project" (if not already).
- Right-click the project -> **Run As** -> **Run on Server**.
- Select your Tomcat 10 server.
- Access the app at `http://localhost:8080/QuizApplication/`.

## Features
- **Authentication:** Role-based login and registration.
- **Admin Module:**
  - Add, View, and Delete quiz questions.
  - Dashboard overview.
- **Student Module:**
  - Dashboard overview.
  - Interactive quiz session.
  - History of quiz results with scores and percentages.
- **UI:** Clean, responsive design using Bootstrap 5.
