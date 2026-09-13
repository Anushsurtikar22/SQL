create database class1 ;

use class1 ;

create table students (
id int auto_increment primary key,
`name` varchar(20) not null,
email varchar(30) not null,
age int check (age >= 18) not null,
address varchar(30) default "India" not null,
`subject` enum ("math", "science", "history") default "science" not null);

select * from students;

describe students ;

insert into students ( `name`, email, age, address )
values ("Anush", "anush04@gmail.com", 22, "Chandrapur");

insert into students ( `name`, email, age ) 
values ( "rohit11", "rohit131@gmail.com", 21) ;

desc students;

create table department_nc (
dept_id int primary key auto_increment,
dept_name varchar(50) not null,
location varchar(50)
);

create table employee_nc (
dept_id int,
emp_id int primary key  auto_increment,
emp_name varchar(50) not null,
salary decimal (10,2),
foreign key (dept_id) references department_nc (dept_id)
);

INSERT INTO employee_nc (emp_name, salary, dept_id) VALUES
('Amit Sharma',    45000, 1),
('Priya Patel',    52000, 2),
('Rahul Verma',    61000, 3),
('Sneha Joshi',    47000, 1),
('Karan Mehta',    55000, 4),
('Pooja Singh',    43000, 2),
('Vijay Kumar',    67000, 3),
('Anita Rao',      48000, 5),
('Deepak Nair',    59000, 4),
('Ritu Gupta',     53000, 1),
('Suresh Iyer',    44000, 5),
('Neha Jain',      62000, 3),
('Mohit Tiwari',   49000, 2),
('Swati Bhatt',    57000, 4),
('Arjun Pillai',   46000, 1),
('Kavita Desai',   71000, 3),
('Nikhil Saxena',  50000, 5),
('Mansi Kulkarni', 54000, 2),
('Rohit Dubey',    66000, 4),
('Ishita Garg',    41000, 1);

select * from department_nc ;
select * from employee_nc ;

CREATE TABLE department_c (
    dept_id     INT PRIMARY KEY AUTO_INCREMENT,
    dept_name   VARCHAR(50) NOT NULL,
    location    VARCHAR(50)
);

CREATE TABLE employee_c (
    emp_id      INT PRIMARY KEY AUTO_INCREMENT,
    emp_name    VARCHAR(50) NOT NULL,
    salary      DECIMAL(10,2),
    dept_id     INT,
    FOREIGN KEY (dept_id) REFERENCES department_c(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO department_c (dept_name, location) VALUES
('HR',        'Mumbai'),
('Finance',   'Delhi'),
('IT',        'Pune'),
('Marketing', 'Bangalore'),
('Sales',     'Hyderabad');

INSERT INTO employee_c (emp_name, salary, dept_id) VALUES
('Amit Sharma',    45000, 1),
('Priya Patel',    52000, 2),
('Rahul Verma',    61000, 3),
('Sneha Joshi',    47000, 1),
('Karan Mehta',    55000, 4),
('Pooja Singh',    43000, 2),
('Vijay Kumar',    67000, 3),
('Anita Rao',      48000, 5),
('Deepak Nair',    59000, 4),
('Ritu Gupta',     53000, 1),
('Suresh Iyer',    44000, 5),
('Neha Jain',      62000, 3),
('Mohit Tiwari',   49000, 2),
('Swati Bhatt',    57000, 4),
('Arjun Pillai',   46000, 1),
('Kavita Desai',   71000, 3),
('Nikhil Saxena',  50000, 5),
('Mansi Kulkarni', 54000, 2),
('Rohit Dubey',    66000, 4),
('Ishita Garg',    41000, 1);

select * from department_c ;

select * from employee_c ;

update department_c 
set dept_id = 6 where dept_id = 3 ;

delete from department_c
where dept_id = 6 ;