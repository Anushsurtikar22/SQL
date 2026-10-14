create database tcl_dcl ;

use tcl_dcl ;

CREATE TABLE t_school(ID INT, School_Name VARCHAR(40), 
Number_Of_Students INT, Number_Of_Teachers INT, Number_Of_Classrooms INT,
 EmailID VARCHAR(40));
 
select * from t_school ;
 
 INSERT INTO t_school(ID, School_Name, Number_Of_Students, Number_Of_Teachers,
 Number_Of_Classrooms, EmailID) 
 VALUES(1, "Boys Town Public School", 1000, 80, 12, "btps15@gmail.com"), 
 (2, "Guru Govind Singh Public School", 800, 35, 15, "ggps25@gmail.com"), 
 (3, "Delhi Public School", 1200, 30, 10, "dps101@gmail.com"), 
 (4, "Ashoka Universal School", 1110, 40, 40, "aus17@gmail.com"), 
 (5, "Calibers English Medium School", 9000, 31, 50, "cems@gmail.com");
 
START TRANSACTION;  

SAVEPOINT s1;  

SAVEPOINT s2;  

SAVEPOINT s3;  

rollback to s2 ;

rollback to s3 ;

rollback ;

commit ;


SET autocommit = 0;   


---------------------------------------------------------

create user "rohit"@"localhost" identified by "rohit1" ;

grant select on class15.students to "rohit"@"localhost" ;

revoke select on class15.students  from "rohit"@"localhost" ;

grant all on class15.* to "rohit"@"localhost" ;

revoke all on class15.* from "rohit"@"localhost" ;

select * from students ;

drop user "rohit"@"localhost" ;