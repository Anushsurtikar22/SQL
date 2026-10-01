-- Convert all customer names to UPPERCASE.

select customer_name from sales;

select upper(customer_name) from sales;

select lower(customer_name) from sales;

-- Find the length of each product name.

select product_name, length(product_name) from sales;

-- Extract the first 15 characters of product name.

select product_name, left (product_name, 15) from sales;

select product_name, right(product_name, 15) from sales;

-- Find all products that contain the word 'Chair'.

select product_name from sales where product_name like '%Chair%' ;

-- Replace 'Standard Class' with 'Economy' in ship_mode.

select distinct ship_mode from sales;

select ship_mode, replace(ship_mode, "Standard Class", "Economy") as newcol from sales;

select customer_name, country, concat(customer_name, " - ", country) as newcol from sales;

select product_name, length(product_name), rtrim(product_name),
length(rtrim(product_name)) from sales ;

-- Count orders per segment but show segment name in proper title case format.

select order_id,
		substring(order_id, 1, 6) as order_prefix
from sales;

select concat(upper(left(segment, 1)), lower(substring(segment, 2))) as formatted_segment,
		count(*) as order_count
from sales
group by segment;

select upper(left(segment, 1)) from sales;

select lower(substring(segment, 2)) as formatted_segment
from sales;

select * from sales ;

select ship_mode, left(ship_mode, 3), customer_name, left(customer_name, 4),
country, left(country, 2) from sales ;

select * from sales ;

select ship_mode, upper(ship_mode),
customer_name, lower(customer_name),
segment, left(segment, 3),
state, right(state, 2),
country, substring(country, 3, 3),
category, replace(category, "Office", "Home"),
concat(country, " - ", state)
from sales ;

-- Convert order_date string to a proper DATE type.

select order_date from sales ;

desc sales ;

-- alter table sales 
-- modify order_date date ;

select order_date, str_to_date(order_date, "%m/%d/%Y") as new_date from sales;

select order_date, year(str_to_date(order_date, "%m/%d/%Y")) as new_date from sales ;

-- Find the number of days between order_date and ship_date.

select order_date, ship_date from sales ;

select order_date, str_to_date(order_date, "%m/%d/%Y") as neworderdate,
ship_date, str_to_date(ship_date, "%m/%d/%Y") as newshipdate ,
datediff(str_to_date(ship_date, "%m/%d/%Y"),
str_to_date(order_date, "%m/%d/%Y")) as daydiff
from sales ;

--  Find all orders placed in Q4 (October, November, December).

select order_date, sales  from sales 
where quarter(order_date) = 4 ;

select order_date, sales  from sales  ;

select order_date, date_add(order_Date, interval 10 day)  from sales ;

select order_date, date_add(order_Date, interval -10 day)  from sales ;

select order_date, date_add(order_Date, interval 10 month)  from sales ;

select order_date, date_format(str_to_date(order_date, "%m/%d/%Y"), "%M-%D-%y")
 as neworderdate from sales ;