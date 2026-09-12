-- databases show krnya sathi
show databases ;

show databases like "c%" ;

-- database create krnya sathi
create database anush ;

create database if not exists anush ;

-- database use krnya sathi
use anush ;

-- table show krnya sathi
show tables ;

-- table create krnya sathi
create table students (`name` varchar(20), address varchar(25) );

-- column madhe value put krnya sathi
insert into students (`name`, address)
values ("Anush", "Chandrapur") ;

insert into students (`name`, address )
values ("Sanket", "Mukutban"),
("Prakshay", "Chandrapur"),
("Himanshu", "Chandrapur" );

-- table chya information sathi
describe students ;

-- create kelela table show krnya sathi
select * from students;

-- table madhe columns add krnya sathi
alter table students
add column sub varchar(10);

-- table madhe name chya nantr column add krnya sathi
alter table students
add column dob varchar(10) after `name`;

-- table madhe 1st no la column add krnya sathi
alter table students
add column id int first ;

-- table madhe purn values add krnya sathi 
insert into students values (8, "Sagar", "2003-10-08", "Manora", "Java") ;

-- table madhe kontya jage vr value add karaychi asel tr
update students
set id = 22 where `name` = "Anush";

update students
set dob = "2004-07-23" where `name` = "Sanket"; 

update students
set id = 53 where `name` = "Prakshay" ;

update students
set sub = "Science" where `name` = "Himanshu" ;

-- table madhe kuthe null value karaychi asnr tr
update students
set address = null where id = 8 ;

-- table madhe konta row delete karaycha asel tr
delete from students
where `name` = "Sagar" ;

-- table madhe konta column null karaycha asel tr
update students 
set address = null ;

-- table madhe column delete karnya sathi
alter table students
drop column address ;

-- table chya info sathi
desc students ;

-- 
alter table students 
modify column dob date ;

-- table madhe column name change krnya sathi
alter table students
rename column dob to dateofbirth ;

-- sub table madhe null value vale row delete krnya sathi 
delete from students
where sub is null ;

-- table madhe purn row delete krnya sathi
truncate table students ;

-- table che name change krnya sathi
rename table students to stud ;

select * from stud ;

-- table delete krnya sathi
drop table stud ;

-- database delete krnya sathi
drop database anush ;




show databases like "%s" ;

show tables like "%s" ;

show columns from user_info ;

-- query

select * from sales ;

desc sales ;

select order_id, segment, ship_mode, region, country, sales from sales ;
select order_id, segment, ship_mode, region, country, sales from sales 
where region = "north" ;

select order_id, segment, ship_mode, region, country, sales from sales 
where region = "north" and sales > 500 ;

select region, sum(sales) as sales  from sales 
group by region ;

select count(*) from sales ;

select country, sum(sales) as sales from sales 
group by country having sum(sales) > 100000 ; 

