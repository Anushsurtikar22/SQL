select * from sales ;

select profit, round(profit, 2) from sales ;

select profit, abs(profit) from sales ;

select profit, ceil(profit) from sales ;

select profit, floor(profit) from sales ;

select profit, pow(profit, 4) from sales ;

select profit, sqrt(profit) from sales ;

-- upper, lower, concat, replace, substring, left, right, trim

-- str_to_date, convert_to_date, year, month, day, quater, week, hour, minute, second

select order_date from sales ;

select order_date, str_to_date(order_date, "%m/%d/%Y") from sales ;

select order_date, date_format(str_to_date(order_date, "%m/%d/%Y"), "%m-%b-%Y") 
as neworderdate from sales ;

select * from sales ;

select customer_name, sales from sales ;

select customer_name, sales,
case
	when sales > 4000 then "p"
    when sales > 3000 then "H"
    when sales > 1000 then "A"
    else "L" 
end as customer_cat from sales ;

alter table sales
drop column profit ;

alter table sales
add column profit_flag varchar(10) after quantity ;

update sales 
set profit_flag = case 
					when quantity > 0.4 then "High"
                    when quantity > 0.1 then "Avg"
                    else "Low" 
                   end   ;
                   
select *, order_date, 
case 
	when year(order_date) < 2013 then "OD"
    when year(order_date) = 2013 then "PD"
    else "CD"
end as year_cat from sales 
having year_cat = "OD"; 

with newtable as (   -- cte
select sales, quantity, category, segment, order_date, 
case 
	when year(order_date) < 2013 then "OD"
    when year(order_date) = 2013 then "PD"
    else "CD"
end as year_cat from sales )   
select * from newtable where year_cat = "od" ;

-- Cast the year column from INT to CHAR (string).

desc sales ;

select order_id,
		`year`,
        cast(`year` as char) as year_as_text
from sales ;

select * from sales ;

select concat(order_id, "-", `year`) from sales ;

select concat(order_id, "-", cast(`year` as char) ) from sales ; 

select sales * cast(quantity as int) from sales 

SELECT order_date,
       CAST(STR_TO_DATE(order_date, '%m/%d/%Y') AS DATE) AS date_casted
FROM sales
LIMIT 10;

SELECT order_id, quantity,
       CONVERT(quantity, SIGNED)      AS profit_as_int
FROM sales
LIMIT 10;

region+country, sales, profit_flag

select concat(region, "-", country) as place, 
sales,
case 
	when quantity > 0.4 then "HP"
    when quantity > 0.1 then "AP"
    else "LP"
end as profit_flag from sales ;

2011, 12, north, OFF, quantity, half_quantity, 106

select year(str_to_date(ship_date,"%m/%d/%Y") ) as shipyear,
 month(str_to_date(ship_date,"%m/%d/%Y") ) as shipmonth, 
 region,
 left(product_id ,3),
 quantity,
 quantity/2 as half_quantity,
 abs(round(shipping_cost,0)) from sales ;  