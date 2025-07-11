use intro;
show tables;
select count(*) from Customer_churn;
create database try;
use try;
show tables;
drop table Tables_in_try;
select * from Tables_in_try;
use newschema;
show tables;
select * from orders;
select gender,count(*) from Customer_churn
group by gender;
select contract,count(*) from Customer_churn
group by contract;
select contract,gender,count(*) from Customer_churn
group by contract,gender ;
select avg(MonthlyCharges) from Customer_churn;
select * from Customer_churn;
select min(MonthlyCharges) from Customer_churn;
select sum(MonthlyCharges) from Customer_churn;
create table x(firstname varchar(30),lastname varchar(30),address varchar(50),age int);
insert into x values('sanjeev' ,'yadav','kauriram',22),
('rosy ','sen','mumbai',21),
('raju' ,'kumar','gorakpur',23);
select * from x;
select concat(firstname,lastname) from x;
select concat(trim(firstname),' ',trim(lastname))from x;
select substr(firstname,1,4) as sub_string,firstname from x;
select firstname,lastname,upper(firstname),lower(lastname) from x;
select char_length(firstname)	 from x;
select * from Customer_churn where customerID regexp '[VNU]';
select count(*) from Customer_churn where MonthlyCharges> (select avg(MonthlyCharges) from Customer_churn);