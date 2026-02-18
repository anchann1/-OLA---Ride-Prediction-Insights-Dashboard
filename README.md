📊 OLA - Ride Prediction & Insights Dashboard
🧠 Project Overview

This project analyzes ride booking data of a ride-hailing service (OLA-like platform) to identify patterns in bookings, cancellations, revenue, vehicle performance, and customer/driver ratings.

The goal of the project is to simulate a real data analyst workflow:

Raw Data → SQL Analysis → Business Insights → Power BI Dashboard

🛠️ Tech Stack

SQL (MySQL) → Data querying & analysis

Power BI → Dashboard & visualization

Excel/CSV → Raw dataset

GitHub → Project documentation


🗄️ Database Setup
Step 1 — Create database & table

Run:

source schema.sql;

Step 2 — Import dataset
LOAD DATA LOCAL INFILE 'path_to/bookings.csv'
INTO TABLE bookings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

📊 Business Questions Solved Using SQL

Retrieve all successful bookings

Average ride distance per vehicle type

Total cancelled rides by customers

Top 5 customers by number of rides

Driver cancellations due to personal/car issues

Max & Min driver ratings for Prime Sedan

Rides paid using UPI

Average customer rating per vehicle type

Total successful booking value

Incomplete rides with reasons

(SQL queries available in Analysis_Queries.sql)

📈 Power BI Dashboard Insights
1️⃣ Overall

Ride volume over time

Booking status distribution

Total bookings & revenue

2️⃣ Vehicle Type

Performance by vehicle category

Distance travelled & booking value comparison

3️⃣ Revenue

Revenue by payment method

Top 5 customers by booking value

Ride distance distribution

4️⃣ Cancellation

Customer cancellation reasons

Driver cancellation reasons

Cancellation rate

5️⃣ Ratings

Driver rating distribution

Customer rating comparison across vehicle types

🔍 Key Insights

Majority bookings are successful rides

Cash & UPI are dominant payment methods

Certain vehicle types generate higher booking value

Driver cancellations frequently occur due to personal/car issues

Customer and driver ratings remain consistently high (~4.0)

🚀 How to Run the Project

Clone the repository

Import dataset into MySQL

Run SQL queries

Open Power BI dashboard file

Explore insights

📌 What This Project Demonstrates

SQL data analysis skills

Data cleaning & aggregation

Business problem solving

Dashboard design

End-to-end analytics workflow

👩‍💻 Author

Anushka Chandra
BTech Student | Aspiring Data Analyst
Skilled in SQL, Power BI, Python & Data Visualization
