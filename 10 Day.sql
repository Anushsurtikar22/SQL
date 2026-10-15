use sales_1 ; 

select * from sales ;

explain select * from sales where region = "africa" ;

SELECT  order_id,  customer_name,  sales,  profit, `year`, 
ROW_NUMBER() OVER (ORDER BY sales DESC)  AS row_num
FROM sales
LIMIT 20;


SELECT  order_id,  customer_name,  sales,  profit, region, sub_category,
ROW_NUMBER() OVER (partition by sub_category )  AS row_num
FROM sales 
where country = "india" ;

with newtable as (
SELECT  order_id,  customer_name,  sales,  profit, region, sub_category,
ROW_NUMBER() OVER (partition by sub_category )  AS row_num
FROM sales 
where country = "india" )
select * from newtable
where row_num in  (1,2,3) ;


SELECT  order_id,  customer_name,  sales,  profit, region, sub_category,
Rank() OVER (partition by region order by sales desc )  AS rank_num
FROM sales 
where country = "india" ;


SELECT  order_id,  customer_name,  sales,  profit, region, sub_category,
dense_rank() OVER (partition by region order by sales desc )  AS rank_num
FROM sales 
where country = "india" ;

SELECT  order_id,  customer_name, country, sub_category, profit, 
dense_rank() OVER (partition by sub_category order by profit desc )  AS rank_num
FROM sales 
where country = "india"  ;

with ranktable as (
SELECT  order_id,  customer_name, country, sub_category, profit, 
dense_rank() OVER (partition by sub_category order by profit desc )  AS rank_num
FROM sales 
where country = "india" )
select * from ranktable where rank_num in (1, 5, 10) ;


select distinct customer_name from sales where country = "india";


select customer_name, row_number() over (partition by ) as id 
from sales where country = "india" ;

select customer_name, row_number() over() as id 
from sales where country = "india" 
group by customer_name;