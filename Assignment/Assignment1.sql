
use dhanu;

use schema dhanu;
create or replace table DS_sales_data(
order_id string ,
order_date date ,
ship_date date ,
ship_mode varchar(20),
customer_name varchar(100) ,
segment	varchar(50),
state varchar(50),
country	varchar(50),
market varchar(50),
region varchar(50),
product_id string,
category varchar(50),
sub_category varchar(100),
product_name varchar(500),
sales int,
quantity int,
discount number(20,3),
profit number(20,5),
shipping_cost number(20,2),	
order_priority varchar(50),
year number
  
);

select * from DS_sales_data;

----Q1. SET PRIMARY KEY.
 alter table DS_sales_data ADD PRIMARY KEY (order_id);
 
----Q2. CHECK THE ORDER DATE AND SHIP DATE TYPE AND THINK IN WHICH DATA TYPE YOU HAVE TO CHANGE.
----> order_date date ,ship_date date 
select * , try_cast(order_date  as date) , try_cast(ship_date  as date) from  DS_sales_data;

  


----Q3. EXTACT THE LAST NUMBER AFTER THE - AND CREATE OTHER COLUMN AND UPDATE IT.

select * , substring(ORDER_ID ,9,16)as orderidnumber  from DS_sales_data;


----Q4. FLAG ,IF DISCOUNT IS GREATER THEN 0 THEN  YES ELSE FALSE AND PUT IT IN NEW COLUMN FRO EVERY ORDER ID.
select *,
case 
when discount > 0 then 'yes'
else 'False'
end as Flag
from DS_sales_data;

----Q5. FIND OUT THE FINAL PROFIT AND PUT IT IN COLUMN FOR EVERY ORDER ID.


----Q6. FIND OUT HOW MUCH DAYS TAKEN FOR EACH ORDER TO PROCESS FOR THE SHIPMENT FOR EVERY ORDER ID.
select order_id ,order_date,ship_date,(ship_date-order_date),ship_mode ,customer_name ,segment ,state ,country ,market ,
region ,product_id, category,sub_category ,	product_name ,sales	, quantity ,discount ,	profit ,shipping_cost ,
order_priority ,year from DS_sales_data;

                          ----- or----
                          
select * ,(ship_date-order_date)  from DS_sales_data;

/*--Q7. FLAG THE PROCESS DAY AS BY RATING IF IT TAKES LESS OR EQUAL 3  DAYS MAKE 5,
LESS OR EQUAL THAN 6 DAYS BUT MORE THAN 3 MAKE 4,
LESS THAN 10 BUT MORE THAN 6 MAKE 3,MORE THAN 10 MAKE IT 2 FOR EVERY ORDER ID.*/

select * ,(ship_date-order_date)  ,
 case 
 when (ship_date-order_date)<= 3 then 5
 when (ship_date-order_date)<= 6 and (ship_date-order_date)> 3 then 4
 when (ship_date-order_date)< 10 and (ship_date-order_date)> 6 then 3
 when(ship_date-order_date) > 10 then 2
 else 1
 end as Rating
from DS_sales_data;



