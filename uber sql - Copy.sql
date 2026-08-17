create database uber ;
use uber;
select * from uber_ ;
 
# 1. total customer 
select distinct count( distinct Customer_ID ) 
 from uber_;
 
 # 1.top 10 customer (booking value)
 select  Customer_ID,
 sum(booking_value) as total_amount
 from uber_
 group by Customer_ID
 order by total_amount desc
 limit 10;
 
 
 
 # 2.top 10 Repeated Customer
 select Customer_ID,
 count(booking_id) as Repeated_Customer
 from uber_
 group by customer_id 
 order by Repeated_Customer desc
 limit 10;
 
 #3. find  the highest and lowest booking  value 
select max(Booking_Value) as highest_booking_value  
, min(Booking_Value) as lowest_booking_value
from uber_ 
where Booking_Value > 0;

 
# 4 . max,min distance
select max(Ride_Distance)  
, min(Ride_Distance) 
from uber_ 
where Ride_Distance > 0;



# 5.find the top 10 pickup locations by number of booking 
select Pickup_Location ,count( Pickup_Location ) top_10_pickup_location 
 from uber_
 group by Pickup_Location
 order by top_10_pickup_location  desc
 limit 10;




# 6.top 10 drop locations
select Drop_Location ,count(Drop_Location) as top_10_drop_location 
 from uber_ 
 group by drop_location 
 order by top_10_drop_location desc 
 limit 10	;
 

 # 7.routes are most popular 
   select Pickup_Location ,
   Drop_Location,
   count(booking_id) as most_popular_routes 
   from uber_
   group by Pickup_Location , Drop_Location
   order by most_popular_routes  desc ;


 
 #8. avg. booking values  vehicle type 
 select Vehicle_Type , avg(Booking_Value) as  avg_booking_values 
 from uber_
 group by  Vehicle_Type
 order by  avg(Booking_Value) desc ;
 
 


# 9. the avg. driver rating for each vehicle type 
select Vehicle_Type,  avg(Driver_Ratings) as avg_driver_rating 
from uber_ 
group by Vehicle_Type 
order by  avg(Driver_Ratings)  asc;



# 10. the avg. customer rating for each vehicle type 
select Vehicle_Type,  avg(Customer_Rating) as avg_customer_rating 
 from uber_ 
 group by Vehicle_Type 
 order by  avg(Customer_Rating)  asc;
 
 
# 11. the busiest day based on bookings
select  date ,count(booking_id)  as total_booking 
from uber_ 
group by date 
order by total_booking desc 
limit 1;
 
 
  # 12. the  busiest hour of the day
   select time ,count(booking_id) as busiest_hour
   from uber_ 
   group by time 
   order by busiest_hour desc 
    limit 1;
    
    
    
  
    
    
    # 13. customer who booked more than 10 ride 
    select customer_id ,count(booking_id )  
    from uber_
    group by customer_id
    having count(booking_id ) >10;
    
    
    
    
    
   #14.vehicle type earns the highest revenue 
  select Vehicle_Type , sum(booking_value ) as revenue 
    from uber_
    group by Vehicle_Type
    limit 1;
    
    
    
   # 15.payment method is preferrod by customer 
   select payment_method , count(Payment_Method) as preferred_by_customers 
   from uber_ 
   where  payment_method <>"Not Received"
   group by Payment_Method 
   order by preferred_by_customers  desc
    ;
   
   
   
   
   
   
   
   # 16.find the total number of boking 
select   count(Booking_ID) from uber_;


# 17. count of cumpleted rides 
select count(Incomplete_Rides) from uber_ 
where Incomplete_Rides =1;

#18. count  cancelled rides by customers 
select count(Cancelled_Rides_by_Customer ) from uber_  
 where Cancelled_Rides_by_Customer =1;
 
 
 # 19. count  cancelled rides by  drivers
 select count(Cancelled_Rides_by_Driver ) from uber_  
 where Cancelled_Rides_by_Driver =1;

# 20. find total revenue generated 
select sum(Booking_Value) from uber_ ;


#21. avg. rides  distance 
select avg(Ride_Distance) from uber_ ;

    