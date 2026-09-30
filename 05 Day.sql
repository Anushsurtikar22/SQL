use practice_data ;

select * from sales ;

-- Round profit to nearest integer.

select profit from sales;

select round(profit, 2) as profit from sales;

-- Truncate shipping_cost to 1 decimal place (no rounding).

select shipping_cost from sales ;

select order_id,
		shipping_cost,
        truncate(shipping_cost, 1) as truncate_cost
from sales ;

-- Find absolute value of profit (useful where profit can be negative).

select order_id, profit, abs(profit) as absolute_profit
from sales
where profit < 0
limit 10;

-- Calculate profit percentage relative to sales.

select order_id, sales, profit,
		round((profit / sales) * 100, 2) as profit_pct
from sales
where sales != 0
limit 15;

select sales as unitprice, quantity, sales * quantity as total_sales from sales ;

select * from sales ;

alter table sales
add column total_sale decimal(10, 2) after profit ;

update sales
set total_sale = round((sales * quantity), 2) ;

commit ;

-- Find the ceiling and floor of shipping_cost.

select order_id,
	   shipping_cost,
       ceil(shipping_cost) as ceil_cost,
       floor(shipping_cost) as floor_cost
from sales
limit 10;

-- Calculate 2 raised to the power of quantity

select order_id,
		quantity,
        pow(quantity, 2) as two_power_qty
from sales
limit 10;

select pow (3, 6) ;

-- Find square root of sales.

select order_id,
		sales,
        round(sqrt(sales), 2) as sqrt_sales
from sales
limit 10 ;

-- Show profit per unit (profit divided by quantity), rounded to 2 places.

select profit, quantity, round((profit / quantity), 4) as profit_per_unit from sales;