/*
Project: OLA Ride Booking Data Analysis
Author: Anushka Chandra
Tools Used: MySQL, Power BI
Description:
This script contains SQL queries used to analyze ride booking dataset.
Business insights include cancellation trends, revenue patterns,
customer behavior and vehicle performance.
*/

-- SQL Questions:

-- 1. Retrieve all successful bookings:
create view Successful_bookings as
select * from bookings
where Booking_Status = "Success";


-- 2. Find the average ride distance for each vehicle type:
create view Average_Ride_Distance as
select Vehicle_Type , avg(Ride_Distance) from bookings
group by Vehicle_Type;


-- 3. Get the total number of cancelled rides by customers:
create view Canceled_Rides_By_Customers as 
select count(*) from bookings
where Booking_Status = "Canceled by Customer";


-- 4. List the top 5 customers who booked the highest number of rides:
create view Top5_Customers_Rides as
select Customer_ID, COUNT(Booking_ID) as Total_Rides from bookings
group by Customer_ID 
order by Total_Rides DESC
LIMIT 5;


-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view Ride_canceled_by_drivers as
select count(Canceled_Rides_by_Driver) as Rides_canceled_by_drivers from bookings 
where Canceled_Rides_by_Driver = "Personal & Car related issue";


-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view Min_Max_Driver_Ratings as 
select max(CAST(Driver_Ratings AS DECIMAL(3,1))) as Maximum_DR , min(CAST(Driver_Ratings AS DECIMAL(3,1))) as Minimum_DR from bookings 
where Vehicle_Type = "Prime Sedan" 
AND Driver_Ratings <> 'null';


-- 7. Retrieve all rides where payment was made using UPI:
create view Rides_UPI as
select * from bookings 
where Payment_Method = "UPI";


-- 8. Find the average customer rating per vehicle type:
create view Avg_Customer_Rating as 
select Vehicle_Type, avg(Customer_Rating) as Average_Rating from bookings 
group by Vehicle_Type;


-- 9. Calculate the total booking value of rides completed successfully:
create view Total_Booking_Value as
select sum(Booking_Value) as Total_Booking_Value from bookings 
where Booking_Status = "Success";


-- 10. List all incomplete rides along with the reason:
create view Incomplete_Rides as
select Customer_ID , Incomplete_Rides_Reason from bookings 
where Incomplete_Rides = "Yes";
