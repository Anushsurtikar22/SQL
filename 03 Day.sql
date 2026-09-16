use practice_data ;

select * from sales;

select * from sales where country = "hungary" or country = "india" ;

select * from sales where country in ("france", "india", "USA");

select * from sales where quantity between 50 and 100 ;

select category, sub_category, sum(sales) as sales, sum(profit) as profit from sales
 group by category,  sub_category ;
 
select country, count(*) from sales group by country ; 

select count(distinct country) from sales ;
 
select country, count(distinct customer_name ) from sales group by country ;  
 
select count(distinct customer_name) from sales ;

select country, count(*) as sales_count from sales group by country having sales_count > 500 ; 

select * from sales order by quantity desc ;

select * from sales order by quantity desc limit 5;

select * from sales order by quantity desc limit 20 offset 5;


select region, country, category, sub_category, avg(sales) as avg_sales, sum(profit), count(quantity) 
from sales 
where region = "north"
group by region, country, category, sub_category 
having sum(profit) > 0
order by country asc, category desc
limit 10
offset 72 ;



-- 1. We want to see only US market orders from the table.

select * from sales where market = "us" ;

-- 2. Show orders where sales are greater than 500.

select * from sales where sales > 500 ;

-- 3. Show orders from 'US' market AND sales > 200.

select * from sales where market = "us" and sales > 200 ;

-- 4. Show all 'Furniture' or 'Technology' category orders.

select * from sales where category in ("furniture", "technology") ;

-- 5. Sort all orders by sales from highest to lowest.

select * from sales order by sales desc ;

-- 6. Show the top 10 most profitable orders.

select category, profit from sales order by profit desc limit 10 ;

-- 7. Count total orders per market.

select market, count(*) from sales group by market ;

-- 8.Find total sales per category, but only show categories with total sales > 500000 ;

select category, sum(sales) from sales group by category having sum(sales) > 500000 ;

-- 9.  Find average profit per segment, sorted by highest average first.

select segment, avg(profit) from sales group by segment order by avg(profit) desc ;

-- 10. Show orders where discount is between 0.1 and 0.3.

select * from sales where discount between 0.1 and 0.3 ;

-- 11. Find the total sales across all orders.

select sum(sales) from sales ;

-- 12.  Count how many orders are in the dataset with region. 

select region , count(*) from sales group by region ; 

-- 13.  Find average discount given to customers.

select avg(discount) from sales ;

-- 14.  Find the maximum and minimum sales in the dataset.

select max(sales) as max_sales, min(sales) as min_sales from sales 
where country = "india";

-- 15. Find total profit per year.

desc sales ;

select new_order_date from sales ;

select year(new_order_date), sum(profit) as profit from sales
group by year(new_order_date) ;

select month(new_order_date), avg(sales) as sales from sales
group by month(new_order_date) ;

select month(new_order_date) from sales ;

select year(new_order_date), month(new_order_date), avg(sales) as sales from sales
group by year(new_order_date), month(new_order_date) ;


select year("2026-09-10") ;
select month("2026-09-10") ;
select day("2026-09-10") ;
select quarter("2026-09-10") ;
select week("2026-09-10") ;