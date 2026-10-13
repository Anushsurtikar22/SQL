use sales_data ;

select * from customers ;

select * from products ;

select * from orders ;

select p.product_id, p.product_name, p.category,
o.order_date, o.sales, o.discount, o.profit
from products p inner join orders o
on p.product_id = o.product_id
where p.category = "furniture" ; 

select p.product_id, p.product_name, p.category,
o.order_date, o.sales, o.discount, o.profit
from products p left join orders o
on p.product_id = o.product_id
where p.category = "furniture" ; 

select p.product_id, p.product_name, p.category,
o.order_date, o.sales, o.discount, o.profit
from products p right join orders o
on p.product_id = o.product_id
where p.category = "furniture" ; 

select c.customer_name, c.region,
p.product_id, p.product_name, p.category,
o.order_date, o.sales, o.discount, o.profit
from customers c join orders o
on c.customer_name = o.customer_name
join products p on
p.product_id = o.product_id ;


-------------------------------------------------------------

use sales_1 ;

select * from sales ;

select customer_name, region, category, sales, quantity, profit from sales ;

create view new_v1 as select customer_name, region, category, sales, quantity, profit from sales ;

drop view bank_sales ;

select * from new_v1 ;

select segment from sales ;

create view consumer as select customer_name, region, segment, category, sales, quantity, profit from sales
where segment = "consumer" ;


create view corporate as select customer_name, region, segment, category, sales, quantity, profit from sales
where segment = "corporate" ;

select * from consumer ;

-------------------------------------------------------------------

select * from consumer
union
select * from corporate ;

select * from consumer
union all
select * from corporate ;

select customer_name, sales, profit from consumer
union
select sales, customer_name, profit from corporate ;


select customer_name, sales, profit from consumer
union
select customer_name, sales from corporate ;